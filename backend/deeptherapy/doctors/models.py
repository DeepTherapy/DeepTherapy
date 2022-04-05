from click import password_option
from django.db import models
from django.forms import HiddenInput
from django import forms
# Create your models here.
class Doctor(models.Model):
    did = models.CharField(max_length=20, primary_key= True)
    dname = models.CharField(max_length=100)
    demail = models.EmailField()
    dpass = forms.CharField(max_length=20, widget = forms.PasswordInput)
    
    class Meta:
        db_table = "doctors"