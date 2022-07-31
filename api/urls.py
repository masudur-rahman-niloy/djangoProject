from django.urls import path, include
from api.views import PeopleViewSet
from rest_framework import routers

urlpatterns = [
    path('people/', PeopleViewSet.as_view({'get': 'list', 'post': 'create'})),
]