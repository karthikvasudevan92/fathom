from django.contrib import admin
from .models import Wordtype, Word, Thing, Quantity, Dimension, Aliase, Quantity_aliase, Candidate, Comment, Submission
@admin.register(Wordtype, Word, Thing, Quantity, Dimension, Aliase, Quantity_aliase, Candidate, Comment, Submission)
class DefaultAdmin(admin.ModelAdmin):
    pass
# Register your models here.
 