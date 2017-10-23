from django.shortcuts import render
from django.http import HttpResponse
import praw

def index(request):
    return render(request, 'home/home.html' , {})

def links(request):
    return render(request, 'home/home.html' , {})
