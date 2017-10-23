from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from .forms import Words
from .models import Word , Candidate, Aliase, Quantity_aliase, Quantity, Subreddit
import praw
from pprint import pprint
from inspect import getmembers
import nltk
import re
from nltk.tokenize import word_tokenize
reddit = praw.Reddit(client_id='dEaiI_xdmIpI1A',
                     client_secret='OgE7mqNf1NNTlHCcBpARvGIbYTE',
                     password='4Heonhoneydewhathfed?',
                     user_agent='testscript by /u/nsaisspying',
                     username='nsaisspying')



def index(request):
    return render(request, 'redditbot/bot.html' , {})

def conncheck(request):
    user = reddit.user.me()
    return render(request, 'redditbot/conncheck.html', {'user':user})



def hunter(request):
    commentlist = []
    submissions = []
    multis = reddit.multireddit('nsaisspying', 'fathom').subreddits
    subreddits = Subreddit.objects.all()
    fodder = {'l':'','s':'','p':'','multis':multis, 'subreddits':subreddits}
    limit = 1
    sub_str = ""
    path = request.GET.get('p')
    if request.GET.get('l'):
        limit = int(request.GET.get('l'))
    if path:
        sub = reddit.submission(id=path)
        submissions.append(sub)
        fodder['p'] = path
    elif request.GET.get('s'):
        subreddits = request.GET.get('s').split(' ')
        for sub_id,subreddit in enumerate(subreddits):
            if sub_id>0:
                sub_str += "+"+subreddit
            else:
                sub_str += subreddit
        fodder['s'] = sub_str
        fodder['l'] = limit                
        submissions = reddit.subreddit(sub_str).hot(limit=limit)
    if request.GET.get('subs'):
        subs_checked = request.GET.getlist('subs')
        sub_str = "+".join(subs_checked)
        fodder['subs'] = sub_str
        submissions = reddit.subreddit(sub_str).hot(limit=limit)
    analysis = Candidate.discover_candidates(submissions)
    return render(request, 'redditbot/hunter.html',{'analysis':analysis, 'fodder':fodder})

def addaliases(request):
    analysis = []
    quantities = Quantity.objects.all().filter(isc=0)
    for q in quantities:
        tokens = word_tokenize(q.aliases)
        for token in tokens:
            if(token != ','):
                aliase_found = Aliase.objects.all().filter(word__exact=token)
                if(aliase_found):
                    pprint('found')
                else:
                    aliase = Aliase(word=token)
                    aliase.save()
                    quantity_aliase = Quantity_aliase(quantity=q, aliase=aliase)
                    quantity_aliase.save()
    return render(request, 'redditbot/addbulk_quantity_aliases.html',{'analysis':analysis})    

def addwords(request):
    # if this is a POST request we need to process the form data
    if request.method == 'POST':
        # create a form instance and populate it with data from the request:
        form = BulkWords(request.POST)
        # check whether it's valid:
        if form.is_valid():
            # process the data in form.cleaned_data as required
            # ...
            # redirect to a new URL:
            return HttpResponseRedirect('/thanks/')

    # if a GET (or any other method) we'll create a blank form
    else:
        form = Words()

    return render(request, 'redditbot/addbulk.html', {'form': form})

def bulkwords(request):
    file = open('words10000.txt')
    index = 0
    for line in file.readlines():
        linestripped = line.rstrip('\n')
        word = Word(wordstr=linestripped)
        word.save()
        index += 1
        if index == 500:
            break

    return render(request,  'redditbot/addbulk.html', {})