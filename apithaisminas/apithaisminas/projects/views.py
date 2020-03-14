from .models import Project
from .serializers import ProjectSerializer

from django.http import Http404
from django.core.exceptions import ObjectDoesNotExist

from rest_framework.viewsets import ViewSet
from rest_framework.response import Response

class ProjectView(ViewSet):

    def get_object(self, pk):
        try:
            return Project.objects.get(pk=pk)
        except Project.DoesNotExist:
            raise Http404

    def retrieve(self, request, pk, format=None):
        project = self.get_object(pk)
        serializer = ProjectSerializer(project)
        
        return Response(serializer.data)

    def list(self, request):
        queryset = Project.objects.all()
        serializer = ProjectSerializer(queryset, many=True)

        return Response(serializer.data)
