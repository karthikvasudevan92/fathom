from django import forms
from .models import Word, Subreddit

class Words(forms.ModelForm):
    
    class Meta:
        model = Word
        fields = ('wordstr','wordtype')

class Subreddit_form(forms.ModelForm):
    class Meta:
        model = Subreddit
        fields = ('name',)