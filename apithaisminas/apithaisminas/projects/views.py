from .models import Project, Categorie
from .serializers import CategorieSerializer, ProjectSerializer

from django.http import Http404

from rest_framework.viewsets import ViewSet
from rest_framework.response import Response

class ProjectView(ViewSet):

    def get_object(self, slug):
        try:
            return Categorie.objects.get(slug=slug)
        except Categorie.DoesNotExist:
            raise Http404

    def retrieve(self, request, slug, format=None):
        categorie = self.get_object(slug)
        serializer = CategorieSerializer(categorie)
        
        return Response(serializer.data)

    def list(self, request):
        queryset = Categorie.objects.all()
        serializer = CategorieSerializer(queryset, many=True)

        return Response(serializer.data)
