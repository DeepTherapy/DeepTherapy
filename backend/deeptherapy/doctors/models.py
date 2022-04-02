from click import password_option
from django.db import models
from django.forms import HiddenInput

# Create your models here.
class Doctor(models.Model):
    did = models.CharField(max_length=20, primary_key= True)
    dname = models.CharField(max_length=100)
    demail = models.EmailField()
    dpass = models.CharField(max_length=20)
    
    class Meta:
        db_table = "doctors"