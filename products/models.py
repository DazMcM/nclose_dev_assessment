from django.db import models

from vendors.models import Vendor


class Product(models.Model):
    name = models.CharField(max_length=50)
    vendor = models.ForeignKey(Vendor, related_name='product', on_delete=models.CASCADE)
    price = models.DecimalField(max_digits=10, decimal_places=2)

    def __str__(self):
        return self.name
