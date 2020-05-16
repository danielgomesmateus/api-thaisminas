from django.http import HttpResponse, HttpResponseRedirect

from .models import Project, Categorie, File

from .serializers import CategorieSerializer, CategorieProjectsSerializer, ProjectSerializer, FileSerializer

from rest_framework.viewsets import ModelViewSet
from rest_framework import mixins
from rest_framework import viewsets
from rest_framework.decorators import action


class ProjectView(ModelViewSet):
    queryset = Project.objects.filter(status=True)
    serializer_class = ProjectSerializer
    http_method_names = ['get']
    lookup_field = 'slug'


class CategorieView(ModelViewSet):
    queryset = Categorie.objects.filter(status=True, projects__status=True)
    default_serializer_class = CategorieSerializer
    serializer_classes = {
        'list': CategorieSerializer,
        'retrieve': CategorieProjectsSerializer
    }
    http_method_names = ['get']
    lookup_field = 'slug'

    def get_serializer_class(self):
        return self.serializer_classes.get(self.action, self.default_serializer_class)


class FileView(mixins.RetrieveModelMixin, viewsets.GenericViewSet):
    http_method_names = ['get']
    lookup_field = 'project__slug'

    def retrieve(self, request, *args, **kwargs):
        try:
            queryset = File.objects.all().select_related('project').first()
            serializer = FileSerializer(queryset)

            return HttpResponseRedirect(serializer.data.get('files'))
        except File.DoesNotExist:
            return HttpResponse('Arquivo não encontrado')
