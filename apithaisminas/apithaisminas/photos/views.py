from .models import Photo, Album
from .serializers import AlbumSerializer

from django.http import Http404

from rest_framework.viewsets import ViewSet
from rest_framework.response import Response

class PhotoView(ViewSet):

    def get_object(self, slug):
        try:
            return Album.objects.get(slug=slug)
        except Album.DoesNotExist:
            raise Http404

    def retrieve(self, request, slug, format=None):
        album = self.get_object(slug)
        serializer = AlbumSerializer(album)

        return Response(serializer.data)

    def list(self, request):
        albums = Album.objects.all()
        serializer = AlbumSerializer(albums, many=True)

        return Response(serializer.data)