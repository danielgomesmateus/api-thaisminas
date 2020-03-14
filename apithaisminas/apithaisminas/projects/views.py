from .models import Project
from .serializers import ProjectSerializer

from django.http import Http404
from django.core.exceptions import ObjectDoesNotExist

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
