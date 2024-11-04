from django.contrib.auth.models import User
from django.db import models


class Vendor(models.Model):
    name = models.CharField(max_length=50)
    description = models.TextField(blank=True)
    users = models.ManyToManyField(User, related_name='vendors')  # Not sure if many-to-many is correct here, or if the intention is to have 1 user per vendor

    def __str__(self):
        return self.name
