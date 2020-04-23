from .models import Slide
from .serializers import SlideSerializer

from rest_framework import mixins
from rest_framework import viewsets


class SlideView(mixins.ListModelMixin, viewsets.GenericViewSet):
    queryset = Slide.objects.filter(status=True)
    serializer_class = SlideSerializer
    http_method_names = ['get']