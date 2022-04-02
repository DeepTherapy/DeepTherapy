from django.shortcuts import render, redirect
from .models import Doctor
from .serializers import DoctorSerializer
from rest_framework import viewsets


# Create your views here.
class Doctor(viewsets.ModelViewSet):
    queryset = Doctor.objects.all()
    serializer_class = DoctorSerializer