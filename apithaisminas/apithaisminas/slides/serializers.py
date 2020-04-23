from rest_framework.serializers import ModelSerializer

from .models import Slide


class SlideSerializer(ModelSerializer):

    class Meta:
        model = Slide
        fields = (
            'title',
            'description_short',
            'image'
        )