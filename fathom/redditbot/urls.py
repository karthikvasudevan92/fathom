from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^conncheck/$', views.conncheck, name='conncheck'),
    url(r'^hunt/$', views.hunt, name='hunt'),
    url(r'^candidates/$', views.candidates, name='candidates'),
]