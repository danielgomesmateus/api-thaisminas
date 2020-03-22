from .models import Page
from .serializers import PageSerializer

from rest_framework.viewsets import ModelViewSet
from rest_framework import mixins, viewsets

class PageView(mixins.RetrieveModelMixin, viewsets.GenericViewSet):
    queryset = Page.objects.filter(status=True)
    serializer_class = PageSerializer
    http_method_names = ['get']
    lookup_field = 'slug'
    