from django import forms
from .models import Word

class Words(forms.ModelForm):
    
    class Meta:
        model = Word
        fields = ('wordstr','wordtype')