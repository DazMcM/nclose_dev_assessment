from django.contrib.auth.models import User
from django.db import models


class Client(models.Model):
    name = models.CharField(max_length=50)
    user = models.ForeignKey(User, related_name='client', on_delete=models.CASCADE)

    def __str__(self):
        return self.name
