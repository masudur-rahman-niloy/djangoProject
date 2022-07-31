from django.db import models

# Create your models here.


class People(models.Model):
    people_name = models.CharField(max_length=50, null=False, blank=False)
