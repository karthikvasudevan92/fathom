from django.shortcuts import render
from django.core.paginator import Paginator
from django.contrib.contenttypes.models import ContentType
from django.http import HttpResponse, HttpResponseRedirect
from .forms import Words, Subreddit_form
from .models import Word , Candidate, Aliase, Quantity_aliase, Quantity, Subreddit, Submission, Hunt, Hunt_relation, Object_type
from pprint import pprint
from inspect import getmembers
import nltk
import re
from nltk.tokenize import word_tokenize
import praw
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

def hunts(request):
    user = reddit.user.me()
    return render(request, 'redditbot/conncheck.html', {'user':user})

def hunter(request):
    commentlist = []
    submissions = []
    fodder = {
        'limit':request.GET.get('l'),
        'subreddits_request':request.GET.get('s'),
        'path':request.GET.get('p'),
        'multis':reddit.multireddit('nsaisspying', 'fathom').subreddits,
        'subreddits_all':Subreddit.objects.all()
        }
    sub_str = ""
    if fodder['limit']:
        fodder['limit'] = int(request.GET.get('l'))
    if fodder['path']:
        sub = reddit.submission(id=path)
        submissions.append(sub)
    elif fodder['subreddits_request']:
        subreddits = fodder['subreddits_request'].split(' ')
        for sub_id,subreddit in enumerate(subreddits):
            if sub_id>0:
                sub_str += "+"+subreddit
            else:
                sub_str += subreddit
        fodder['subreddits'] = sub_str             
        submissions = reddit.subreddit(sub_str).hot(limit=fodder['limit'])
    hunt = Hunt.objects.create()
    analysis = Candidate.discover_candidates(submissions,hunt)
    return render(request, 'redditbot/hunter.html',{'analysis':analysis, 'fodder':fodder})
    
def candidates(request):
    hunts = Hunt.objects.all().order_by('-id')[:5]
    content_type = ContentType.objects.get(model='candidate')
    hunt_id = request.POST.get('h')
    if hunt_id:
        hunt = Hunt.objects.get(id=hunt_id)
    else:
        hunt = Hunt.objects.latest('id')
    candidates = Hunt_relation.objects.filter(content_type=content_type,hunt=hunt)
    oldest = request.POST.get('o')
    if oldest:
        p = Paginator(candidates.order_by('id'),50)            
    else:
        p = Paginator(candidates.order_by('-id'),50)
    pagenum = request.POST.get('p')
    if pagenum:
        page = p.page(pagenum)
    else:
        page = p.page(1)
    data = {'candidates':page.object_list, 'paginator':page, 'page_range':p.page_range, 'hunts':hunts}
    return render(request, 'redditbot/candidates.html',{'data':data})
    
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