from .models import Project, Categorie
from .serializers import CategorieSerializer, CategorieProjectsSerializer, ProjectSerializer

from rest_framework.viewsets import ModelViewSet


class ProjectView(ModelViewSet):
    queryset = Project.objects.filter(status=True)
    serializer_class = ProjectSerializer
    http_method_names = ['get']
    lookup_field = 'slug'


class CategorieView(ModelViewSet):
    queryset = Categorie.objects.filter(status=True)
    default_serializer_class = CategorieSerializer
    serializer_classes = {
        'list': CategorieSerializer,
        'retrieve': CategorieProjectsSerializer
    }
    http_method_names = ['get']
    lookup_field = 'slug'

    def get_serializer_class(self):
        return self.serializer_classes.get(self.action, self.default_serializer_class)
