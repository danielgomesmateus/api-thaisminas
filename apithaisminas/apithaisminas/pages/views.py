from .models import Page
from .serializers import PageSerializer

from django.http import Http404

from rest_framework.viewsets import ViewSet
from rest_framework.response import Response

class PageView(ViewSet):

    def get_object(self, slug):
        try:
            return Page.objects.get(slug=slug)
        except Page.DoesNotExist:
            raise Http404

    def retrieve(self, request, slug, format=None):
        page = self.get_object(slug)
        serializer = PageSerializer(page)

        return Response(serializer.data)