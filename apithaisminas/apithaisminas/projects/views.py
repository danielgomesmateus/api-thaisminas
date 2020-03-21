from .models import Project, Categorie
from .serializers import CategorieSerializer, ProjectSerializer

from django.http import Http404

from rest_framework.viewsets import ViewSet
from rest_framework.response import Response

class ProjectView(ViewSet):

    def get_object(self, slug):
        try:
            return Project.objects.get(slug=slug)
        except Project.DoesNotExist:
            raise Http404

    def retrieve(self, request, slug, format=None):
        project = self.get_object(slug)
        serializer = ProjectSerializer(project)
        
        return Response(serializer.data)

    def list(self, request):
        queryset = Project.objects.all()
        serializer = ProjectSerializer(queryset, many=True)

        return Response(serializer.data)

class CategorieView(ViewSet):

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
