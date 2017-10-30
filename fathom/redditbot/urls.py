from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^conncheck/$', views.conncheck, name='conncheck'),
    url(r'^hunter/$', views.hunter, name='hunter'),
    url(r'^hunts/$', views.hunts, name='hunts'),
    url(r'^candidates/$', views.candidates, name='candidates'),
]