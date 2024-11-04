# Django Project with MySQL, Django REST Framework, and Admin Autocomplete

## Project Overview

This project is a Django-based web application that utilizes:
- Django REST Framework for API endpoints.
- MySQL as the database.
- Django Admin with autocomplete fields for handling large datasets.

### Key Features
- **Vendors** and **Products**: Vendors have multiple linked products.
- **Users and Clients**: Clients are associated with users.
- **Phishing API Endpoint**: Fetches data from an external phishing URL, pagination was included to handle large lists. Simply add query params `?page=<int>&page_size=<int>` into the URL to fetch additional pages and custom data length.
- **Autocomplete Fields**: Foreign key fields like `Vendor` and `Client` use autocomplete in the Django admin to handle large datasets efficiently.

## Project Setup

### Prerequisites
- Docker and Docker Compose installed on your system.

### Getting Started

1. **Clone the repository**:

   ```bash
   git clone https://github.com/DazMcM/nclose_dev_assessment.git
   
2. **Start the Docker containers**:

   ```bash
   docker-compose up --build

3. **Apply the supplied MySQL dump**
4. **Access the Application**:
   - Django Admin: http://localhost:8000/admin/
   - Phishing Data API: http://localhost:8000/api/phishing-data/?page=1&page_size=100

## List of Client Products API
Lists products available to a specific client based on user and vendor relationships.

**Endpoint**: /api/client/<client_id>/products/

**Example usage**: http://localhost:8000/api/client/1/products/
   