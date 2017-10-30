from django.db import models
from pprint import pprint
from inspect import getmembers
from django.contrib.contenttypes.models import ContentType
from django.contrib.contenttypes.fields import GenericForeignKey
from nltk.tokenize import word_tokenize, sent_tokenize
import re
import nltk
import time
import praw
from praw.models import MoreComments
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
class Object_type(models.Model):
    name = models.CharField(max_length=15)
    def __str__(self):
        return self.name
    class Meta:
        db_table = "object_type"
class Hunt(models.Model):
    def __str__(self):
        return str(self.id)
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
            print("*submission saved - ", self.id)
            print("title - ", self.title)            
    def get_from_reddit():
        reddit = praw.Reddit(client_id='dEaiI_xdmIpI1A',
                     client_secret='OgE7mqNf1NNTlHCcBpARvGIbYTE',
                     password='4Heonhoneydewhathfed?',
                     user_agent='testscript by /u/nsaisspying',
                     username='nsaisspying')
    class Meta:
        db_table = 'submission'
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
        sentences = self.sentences()
        tokenized_sentences = []
        word_index = 0
        for sentence in sentences:
            tokenized_sentence = word_tokenize(sentence)
            tokenized_sentences.append(tokenized_sentence)
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
            print("*comment saved - ", self.id)
            print("comment body - ", self.body)
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
    def __str__(self):
        return self.candidate
    def save(self,hunt):
        cand = Candidate.objects.filter(candidate=self.candidate,word_index=self.word_index,com=self.com) 
        if cand:
            self.id = cand[0].id
        else:
            super(Candidate, self).save()
            hunt_relation = Hunt_relation(hunt=hunt,object_id=self.id).save(self.__class__.__name__.lower()) 
            print("Candidate saved - ", self.id, " - ", self.candidate)
    def comment_tokens(self):
        word_index_comment = 0
        sentences = []
        for sentence in self.com.words():
            sent = {'sentence':[],'class':''}
            sent_tagged = nltk.pos_tag(sentence)
            entities = re.findall(r'NE\s(.*?)/',str(nltk.ne_chunk(sent_tagged, binary=True)))
            for word_index_sentence,word in enumerate(sentence):
                tag = {'pos':sent_tagged[word_index_sentence][1]}
                wrd = {'word':word,'class':'','tag':tag}
                if word_index_comment == self.word_index:
                    wrd['class'] += ' is_candidate'
                    sent['class'] += ' is_candidate_sentence'
                if word in entities:
                    wrd['class'] += ' named_entity'                    
                sent['sentence'].append(wrd)
                word_index_comment += 1
            sentences.append(sent)
        return sentences 
    def is_candidate(word_candidate):
        candidature = False
        word = word_candidate['text']
        has_digit = bool( re.search( r'\d', word ) )
        if has_digit:
            if len(word)<10:
               candidature = True
        return candidature
    def discover_candidates(submissions,hunt):
        start_time = time.time()
        match_number = re.compile('-?\ *[0-9]+\.?[0-9]*(?:[Ee]\ *-?\ *[0-9]+)?')
        discovery = {
                'hunt':hunt,
                'count':0,
                'candidatecount': 0,
                'comment_count':0,
                'submission_count':0,
                'submissions_searched':0,
                'word_candidates':[],
            }
        pprint("Starting discovery.")
        pprint(hunt.id)
        for submission_index,submission in enumerate(submissions):
            subreddit_obj = Subreddit(name=submission.subreddit.display_name)
            subreddit_obj.save(hunt)
            submission_obj = Submission(sub_link_id=submission,title=submission.title,subreddit=subreddit_obj,score=submission.score)
            submission_obj.save(hunt)
            comment_list = [] 
            discovery['submissions_searched'] += 1
            has_comments = False
            for comment_index,comment in enumerate(submission.comments):
                if isinstance(comment, MoreComments):
                    continue
                words = word_tokenize(comment.body)
                comment_body = " ".join(words)
                com_obj = Comment(com_link_id=comment,body=comment_body,sub=submission_obj,score=comment.score)
                try:
                    com_obj.save(hunt)
                except:
                    print("couldn't print")
                    print(comment_body)
                    continue
                comment_obj = {'index':comment_index, 'words':[]}
                comment_processed_index = 0
                commit_comment = False
                has_candidates = False
                words_tagged = nltk.pos_tag(words)
                for word_index,word in enumerate(words):
                    candidature = False
                    word_tag = words_tagged[word_index][1]
                    word_candidate = {'text': word , 'word_index':word_index , 'word_tag': word_tag, 'num_list':[] , 'comment_words':[], 'comment_before':[], 'comment_after': []}
                    candidature = Candidate.is_candidate(word_candidate)
                    if candidature:
                        word_candidate_obj = Candidate(candidate=word,word_index=word_index,word_tag=word_tag,com=com_obj)
                        word_candidate_obj.save(hunt)
                        has_candidates = True
                        word_candidate['num_list'] = [float(x) for x in re.findall(match_number, word)]
                        has_digit = True
                        sub_id = submission_obj.sub_link_id
                        title = word_tokenize(submission_obj.title)
                        namedEnt = nltk.ne_chunk(words_tagged, binary=True)
                        entities = re.findall(r'NE\s(.*?)/',str(namedEnt))
                        for comment_word_index,comment_word in enumerate(words):
                            c_word = { 'word': comment_word, 'comment_word_index': comment_word_index , 'class': '', 'quantity_matches':[], 'word_tag':words_tagged[comment_word_index][1] }
                            if comment_word in entities:
                                c_word['class'] += 'named_entity'
                            if (comment_word_index == word_index):
                                c_word['class'] += ' is_the_candidate'
                            if (Candidate.is_candidate({ 'text': comment_word })):
                                c_word['class'] += ' is_candidate'
                            if comment_index > comment_processed_index or comment_index == 0:
                                c_word['quantity_matches'] = Quantity.isQuantity({ 'text': comment_word })                                                        
                                comment_obj['words'].append(c_word)
                                commit_comment = True
                            else:
                                c_word['quantity_matches'] = comment_list[-1]['words'][comment_word_index]['quantity_matches']
                            if bool(c_word['quantity_matches']):
                                c_word['class'] += ' is_quantity'
                            c_word['index'] = comment_word_index
                            word_candidate['comment_words'].append(c_word)
                        if commit_comment:
                            commit_comment = False
                            comment_processed_index = comment_index
                            comment_list.append(comment_obj)
                        word_candidate['candidate_submission'] = {
                                'title': title,
                                'sub_id': sub_id,
                                'subreddit': submission_obj.subreddit,
                                'permalink':submission.permalink,
                                'score': submission.score,
                                'comment':words,
                            }
                        word_candidate['ne'] = entities
                        discovery['word_candidates'].append(word_candidate)
                        discovery['count'] += 1
                if has_candidates:
                    discovery['comment_count'] += 1  
                    has_comments = True
            if has_comments:
                discovery['submission_count'] += 1
        if discovery['count'] < 1:
            hunt.delete()
        pprint("done with discovery.")
        discovery["execution_time"] = " %s seconds" % (time.time() - start_time)
        print(discovery["execution_time"])
        return discovery

    class Meta:
        db_table = "candidate"