from django.contrib import admin
from django.contrib.auth.models import User

from clients.models import Client
from .models import Product


class ClientFilter(admin.SimpleListFilter):
    title = 'Client'
    parameter_name = 'client'

    def lookups(self, request, model_admin):
        clients = Client.objects.all()
        return [(client.id, client.name) for client in clients]

    def queryset(self, request, queryset):
        if self.value():
            # Filter all products for the selected client
            return queryset.filter(
                vendor__users__id__in=User.objects.filter(client__id=self.value()).values_list('id', flat=True)
            )
        return queryset


@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = ('name', 'price', 'vendor')
    list_filter = ('vendor', ClientFilter)
    search_fields = ('vendor', 'name')
    autocomplete_fields = ['vendor']
