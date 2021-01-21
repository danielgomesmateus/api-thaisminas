from django.http import HttpResponseRedirect

from .models import Post, Categorie

from .serializers import CategorieSerializer, CategoriePostsSerializer, PostSerializer

from rest_framework.viewsets import ModelViewSet
from rest_framework import mixins
from rest_framework import viewsets
from rest_framework import status
from rest_framework.response import Response


class PostView(ModelViewSet):
    queryset = Post.objects.filter(status=True)
    serializer_class = PostSerializer
    http_method_names = ['get']
    lookup_field = 'slug'


class CategorieView(ModelViewSet):
    queryset = Categorie.objects.filter(status=True, posts__status=True)
    default_serializer_class = CategorieSerializer
    serializer_classes = {
        'list': CategorieSerializer,
        'retrieve': CategoriePostsSerializer
    }
    http_method_names = ['get']
    lookup_field = 'slug'

    def get_serializer_class(self):
        return self.serializer_classes.get(self.action, self.default_serializer_class)

