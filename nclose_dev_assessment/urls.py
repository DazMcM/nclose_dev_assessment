"""
URL configuration for nclose_dev_assessment project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from rest_framework.routers import DefaultRouter

from clients.views import ClientViewSet
from phishing.views import PhishingDataView
from products.views import ProductViewSet, ProductsForClientView
from vendors.views import VendorViewSet


router = DefaultRouter()
router.register(r'vendor', VendorViewSet)
router.register(r'product', ProductViewSet)
router.register(r'client', ClientViewSet)


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include(router.urls)),
    path('api/phishing-data/', PhishingDataView.as_view(), name='phishing-data'),
    path('api/client/<int:client_id>/products/', ProductsForClientView.as_view(), name='client-products'),
]
