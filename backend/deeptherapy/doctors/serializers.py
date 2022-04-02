from telnetlib import DO
from rest_framework import serializers

from .models import Doctor


class DoctorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Doctor
        fields = [
  'did','dname',
  'demail',
  'dpass'
]