from .models import Project, Categorie
from .serializers import CategorieSerializer, ProjectSerializer

from rest_framework.viewsets import ModelViewSet


class ProjectView(ModelViewSet):
    queryset = Project.objects.filter(status=True)
    serializer_class = ProjectSerializer
    http_method_names = ['get']
    lookup_field = 'slug'


class CategorieView(ModelViewSet):
    queryset = Categorie.objects.filter(status=True)
    serializer_class = CategorieSerializer
    http_method_names = ['get']
    lookup_field = 'slug'
