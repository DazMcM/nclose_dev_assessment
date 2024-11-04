from django.shortcuts import get_object_or_404
from rest_framework import viewsets, status
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.views import APIView

from clients.models import Client
from vendors.models import Vendor
from .models import Product
from .serializers import ProductSerializer


class ProductViewSet(viewsets.ModelViewSet):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        queryset = super().get_queryset()
        vendor_id = self.request.query_params.get('vendor')
        if vendor_id:
            queryset = queryset.filter(vendor_id=vendor_id)
        return queryset


class ProductsForClientView(APIView):
    def get(self, request, client_id):
        client = get_object_or_404(Client, id=client_id)

        # Fetch the user linked to this client
        users = [client.user]

        # Fetch vendors linked to this user
        vendors = Vendor.objects.filter(users__in=users).distinct()

        # Fetch products linked to these vendors
        products = Product.objects.filter(vendor__in=vendors).distinct()

        serializer = ProductSerializer(products, many=True)

        return Response(serializer.data, status=status.HTTP_200_OK)
