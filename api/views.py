from rest_framework import viewsets
from api.models import People
from api.serializers import PeopleSerializer


class PeopleViewSet(viewsets.ModelViewSet):
    queryset = People.objects.all()
    serializer_class = PeopleSerializer
