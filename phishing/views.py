import requests
import csv

from django.http import JsonResponse
from rest_framework.views import APIView
from rest_framework.permissions import IsAuthenticated


class PhishingDataView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request):
        url = 'http://data.phishtank.com/data/online-valid.csv'
        response = requests.get(url, stream=True)

        # Parse query parameters for pagination
        page = int(request.query_params.get('page', 1))
        page_size = int(request.query_params.get('page_size', 100))  # Default page size of 100

        # Skip rows until the start of the requested page
        start_row = (page - 1) * page_size
        end_row = start_row + page_size
        data = []

        lines = (line.decode('utf-8') for line in response.iter_lines())
        reader = csv.DictReader(lines)
        for i, row in enumerate(reader):
            if i >= end_row:
                break
            if i >= start_row:
                data.append(row)

        return JsonResponse(data, safe=False)
