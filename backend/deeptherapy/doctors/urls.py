from django.urls import path
from .views import UserRecordView

app_name = 'doctors'
urlpatterns = [
    path('user/', UserRecordView.as_view(), name='users'),
]