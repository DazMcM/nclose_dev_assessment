from django.contrib import admin
from .models import Vendor


@admin.register(Vendor)
class VendorAdmin(admin.ModelAdmin):
    list_display = ('name', 'description')
    filter_horizontal = ('users',)
    search_fields = ('name', 'description')
