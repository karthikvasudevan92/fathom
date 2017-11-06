from django.db import models
from pprint import pprint
from inspect import getmembers
from django.contrib.contenttypes.models import ContentType
from django.contrib.contenttypes.fields import GenericForeignKey
from nltk.tokenize import word_tokenize, sent_tokenize
import re
import nltk
from datetime import datetime, timezone
import time
import praw
from praw.models import MoreComments
import traceback
class Wordtype(models.Model):
    name = models.CharField(max_length=20)
    def __str__(self):
        return self.name
    class Meta:
        db_table = "wordtype"
class Word(models.Model):
    wordstr = models.CharField(max_length=30)
    wordtype = models.ForeignKey(
        'Wordtype',
        on_delete=models.CASCADE,
    )
    def __str__(self):
        return self.wordstr
    class Meta:
        db_table = "word"
class Dimension(models.Model):
    name = models.CharField(max_length=50)
    description = models.CharField(max_length=200)
    def __str__(self):
        return self.name
    class Meta:
        db_table = "dimension"

class Thing(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    hasquantity = models.TextField()
    def __str__(self):
        return self.name
    class Meta:
        db_table = "thing"    
class Quantity(models.Model):
    name = models.CharField(max_length=200)
    symbol = models.CharField(max_length=100)
    bq = models.ForeignKey(
        'self',
        on_delete=models.CASCADE
    )
    aliases = models.CharField(max_length=2000)
    bqmultiplier = models.FloatField()
    d = models.ForeignKey(
        'Dimension',
        on_delete=models.CASCADE,
    )
    isbase = models.PositiveSmallIntegerField()
    isc = models.PositiveSmallIntegerField()
    usage = models.CharField(max_length=500)
    bridge = models.CharField(max_length=200)
    description = models.TextField()
    thing = models.ForeignKey(
        'Thing',
        on_delete=models.CASCADE      
    )
    def __str__(self):
        return self.name
    def isQuantity(word_obj):
        word = word_obj['text']
        quantity_aliases = []
        if not (re.search( r'[\(\)\,]', word )):
            quantity_aliases = Quantity_aliase.objects.all().filter(aliase__word__exact=word)
        return quantity_aliases
    class Meta:
        db_table = "quantity"
class Aliase(models.Model):
    word = models.CharField(max_length=30)
    def __str__(self):
        return self.word
    class Meta:
        db_table = "aliase"
class Quantity_aliase(models.Model):
    quantity = models.ForeignKey(
        'Quantity',
        on_delete=models.CASCADE
    )
    aliase = models.ForeignKey(
        'Aliase',
        on_delete=models.CASCADE
    )
    def __str__(self):
        return (self.quantity.name+" - "+self.aliase.word) 
    class Meta:
        db_table = "quantity_aliase"
class Subreddit(models.Model):
    name = models.CharField(max_length=30)
    def __str__(self):
        return self.name
    def save(self,hunt):
        subreddit = Subreddit.objects.filter(name=self.name) 
        if subreddit:
            self.id = subreddit[0].id
        else:
            super(Subreddit, self).save()
            hunt_relation = Hunt_relation(hunt=hunt,object_id=self.id).save(self.__class__.__name__.lower())             
            print("*subreddit saved - ", self.id, " - ", self.name)
    class Meta:
        db_table = 'subreddit'
class Fodder(models.Model):
    lim = models.PositiveIntegerField()
    subreddits = models.ManyToManyField(Subreddit)
    name = models.CharField(max_length=20)
    path = models.CharField(max_length=30,blank=True)
    show = models.BooleanField(default=0)
    def sub_str(self):
        return '+'.join([subreddit.name for subreddit in self.subreddits.all()])
    def __str__(self):
        return self.name
    def save(self):
        super(Fodder, self).save()
    class Meta:
        db_table = "fodder"
class Hunt(models.Model):
    created = models.DateTimeField(auto_now_add=True)
    fodder = models.ForeignKey(
        'Fodder',
        blank=True,
        on_delete=models.CASCADE
    )
    def __str__(self):
        return str(self.id)
    def get_from_reddit(self):
        submissions = []
        reddit = praw.Reddit(client_id='dEaiI_xdmIpI1A',
                     client_secret='OgE7mqNf1NNTlHCcBpARvGIbYTE',
                     password='4Heonhoneydewhathfed?',
                     user_agent='testscript by /u/nsaisspying',
                     username='nsaisspying')
        if self.fodder.path:
            sub = reddit.submission(id=self.fodder.path)
            submissions.append(sub)
        elif self.fodder.subreddits.count()>0:
            submissions = reddit.subreddit(self.fodder.sub_str()).hot(limit=self.fodder.lim)
        return submissions
    def discover_candidates(self,reddit_submissions):
        start_time = time.time()
        match_number = re.compile('-?\ *[0-9]+\.?[0-9]*(?:[Ee]\ *-?\ *[0-9]+)?')
        pprint("Starting discovery.")
        pprint(reddit_submissions)
        for sub_index,reddit_submission in enumerate(reddit_submissions):
            subreddit = Subreddit(name=reddit_submission.subreddit.display_name)
            subreddit.save(self)
            submission = Submission(sub_link_id=reddit_submission,title=reddit_submission.title,subreddit=subreddit,score=reddit_submission.score)
            submission.save(self)
            has_comments = False
            for com_index, reddit_comment in enumerate(reddit_submission.comments):
                if isinstance(reddit_comment, MoreComments):
                    continue
                comment = Comment(com_link_id=reddit_comment,body=reddit_comment.body,sub=submission,score=reddit_comment.score)
                try:
                    comment.save(self)
                    sentences = comment.words()
                    for sentence in sentences:
                        for wrd in sentence:
                            candidate = Candidate(candidate=wrd['text'],word_index=wrd['word_index'],word_tag=wrd['tag'],com=comment)
                            if candidate.candidature():
                                try:
                                    candidate.save(self)
                                except Exception:
                                    print("couldn't save candidate")
                                    print(e)
                                    print(traceback.format_exc())
                                    pprint(candidate)
                                    continue
                except Exception as e:
                    print('Couldnt save comment')
                    print(e)
                    pprint(comment)
                    continue
        exec_time = " %s seconds" % (time.time() - start_time)
        print(exec_time)
    def get_candidates(self):
        candidates = Hunt_relation.objects.filter(content_type=ContentType.objects.get(model='candidate'),hunt=self)
        return candidates        
    def candidate_count(self):
        candidates = Hunt_relation.objects.filter(content_type=ContentType.objects.get(model='candidate'),hunt=self)
        return len(candidates)
    class Meta:
        db_table = "hunt"
class Hunt_relation(models.Model):
    hunt = models.ForeignKey(
        'Hunt',
        on_delete=models.CASCADE
    )
    content_type = models.ForeignKey(ContentType)
    object_id = models.PositiveIntegerField()
    content_object = GenericForeignKey('content_type', 'object_id')
    def save(self,content_type):
        content_type_obj = ContentType.objects.get(model=content_type)
        self.content_type = content_type_obj        
        super(Hunt_relation, self).save()
    def __str__(self):
        return str(self.content_object)
    class Meta:
        db_table = "hunt_relation"
class Submission(models.Model):
    sub_link_id = models.CharField(max_length=20)
    title = models.TextField()
    subreddit = models.ForeignKey(
        'Subreddit',
        on_delete=models.CASCADE
    )
    score = models.CharField(max_length=10)
    def __str__(self):
        return self.title
    def tokens(self):
        return word_tokenize(self.title)
    def save(self,hunt):
        sub = Submission.objects.filter(sub_link_id=self.sub_link_id) 
        if sub:
            self.id = sub[0].id
        else:
            super(Submission, self).save()
            hunt_relation = Hunt_relation(hunt=hunt,object_id=self.id).save(self.__class__.__name__)             
    class Meta:
        db_table = 'submission'
class Comment(models.Model):
    com_link_id = models.CharField(max_length=20)
    body = models.TextField()
    sub = models.ForeignKey(
        'Submission',
        on_delete=models.CASCADE
    )
    score = models.CharField(max_length=10)
    def sentences(self):
        return sent_tokenize(self.body)
    def words(self):
        word_index_comment = 0
        sentences = self.sentences()
        tokenized_sentences = []
        for sentence in sentences:
            sent = []
            tokenized_sentence = word_tokenize(sentence)
            sent_tagged = nltk.pos_tag(tokenized_sentence)
            for i,token in enumerate(tokenized_sentence):
                word = {'text':token,'word_index':word_index_comment,'tag':sent_tagged[i][1]}
                word_index_comment += 1
                sent.append(word)
            tokenized_sentences.append(sent)
        return tokenized_sentences
    def __str__(self):
        return self.body
    def save(self,hunt):
        com = Comment.objects.filter(com_link_id=self.com_link_id) 
        if com:
            self.id = com[0].id
        else:
            super(Comment, self).save()
            hunt_relation = Hunt_relation(hunt=hunt,object_id=self.id).save(self.__class__.__name__.lower())             
    class Meta:
        db_table = 'comment'
class Candidate(models.Model):
    candidate = models.CharField(max_length=30)
    word_index = models.IntegerField()
    word_tag = models.CharField(max_length=5)
    com = models.ForeignKey(
        'Comment',
        on_delete=models.CASCADE
    )
    def hunt(self): # returns the hunt object that discovered the candidate
        hunt = Hunt_relation.objects.get(content_type=ContentType.objects.get(model=self.__class__.__name__),object_id=self.id).hunt
        return hunt
    def __str__(self):
        return self.candidate
    def save(self,hunt):
        cand_exists = Candidate.objects.filter(candidate=self.candidate,word_index=self.word_index,com=self.com) 
        if cand_exists:
            self.id = cand_exists[0].id
        else:
            super(Candidate, self).save()
            hunt_relation = Hunt_relation(hunt=hunt,object_id=self.id).save(self.__class__.__name__.lower()) 
            pprint(getmembers(self))
    def comment_tokens(self):
        comment_tokens = {'sentences':[],'has_quantities':False} 
        word_index_comment = 0
        aliases = Aliase.objects.all()
        for sentence in self.com.sentences():
            sent = {'sentence':[],'class':'','quantities':[]}
            tokens = word_tokenize(sentence)
            sent_tagged = nltk.pos_tag(sentence)
            entities = re.findall(r'NE\s(.*?)/',str(nltk.ne_chunk(sent_tagged, binary=True)))
            for word_index_sentence,word in enumerate(tokens):
                tag = {'pos':sent_tagged[word_index_sentence][1]}
                wrd = {'word':word,'class':'','tag':tag, 'is_quantity_aliase':False , 'word_index':word_index_comment}
                if word_index_comment == self.word_index:
                    wrd['class'] += ' is_candidate'
                    sent['class'] += ' is_candidate_sentence'
                if word in entities:
                    wrd['class'] += ' named_entity'         
                for aliase in aliases:
                    if(word==aliase.word):
                        q_a = Quantity_aliase.objects.get(aliase=aliase)
                        quantity = q_a.quantity
                        wrd['is_quantity_aliase'] = True
                        wrd['class'] += ' is_aliase'         
                        sent["quantities"].append(quantity)
                        comment_tokens['has_quantities'] = True
                sent['sentence'].append(wrd)
                word_index_comment += 1
            comment_tokens['sentences'].append(sent)
        return comment_tokens 
    def candidature(self):
        candidature = False
        has_digit = bool(re.search( r'\d', self.candidate ))
        if has_digit:
            if len(self.candidate) < 10:
                candidature = True
        return candidature
    def is_candidate(word_candidate):
        candidature = False
        word = word_candidate['text']
        has_digit = bool( re.search( r'\d', word ) )
        if has_digit:
            if len(word)<10:
               candidature = True
        return candidature

    class Meta:
        db_table = "candidate"