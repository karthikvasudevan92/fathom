from django.shortcuts import render
from django.core.paginator import Paginator
from django.contrib.contenttypes.models import ContentType
from django.http import HttpResponse, HttpResponseRedirect
from .forms import Words, Subreddit_form
from .models import Word , Candidate, Aliase, Quantity_aliase, Quantity, Subreddit, Submission, Hunt, Hunt_relation, Fodder
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
    analysis = {}
    fodders = Fodder.objects.filter(show=1).order_by('-id')
    if request.GET.get('fodder'):
        fod = Fodder.objects.get(id=int(request.GET.get('fodder')))
        hunt = Hunt.objects.create()
        hunt.fodder = fod
        submissions = hunt.get_from_reddit()
        analysis = Candidate.discover_candidates(submissions,hunt)
    return render(request, 'redditbot/hunter.html',{'analysis':analysis,  'fodders':fodders})
def hunt(request):
    data = {'candidates':[]}
    fodders = Fodder.objects.filter(show=1).order_by('-id')
    if request.GET.get('fodder'):
        fod = Fodder.objects.get(id=int(request.GET.get('fodder')))
        hunt = Hunt.objects.create()
        hunt.fodder = fod
        submissions = hunt.get_from_reddit()
        hunt.discover_candidates(submissions)
        data['candidates'] = hunt.get_candidates()
        data['count'] = hunt.candidate_count()
        data['submissions_searched'] = len(submissions)
    return render(request, 'redditbot/hunt.html',{'data':data,  'fodders':fodders})
def candidates(request):
    hunts = Hunt.objects.all().order_by('-id')
    valid_hunts = []
    for hunt in hunts:
        if hunt.candidate_count() > 0:
            valid_hunts.append(hunt)
    content_type = ContentType.objects.get(model='candidate')
    hunt_id = request.POST.get('h')
    if hunt_id:
        hunt = Hunt.objects.get(id=hunt_id)
    else:
        hunt = valid_hunts[0]
    candidates = hunt.get_candidates()
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
    pprint(p.page_range)
    data = {'candidates':page.object_list, 'paginator':page, 'page_range':p.page_range, 'hunts':valid_hunts}
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
