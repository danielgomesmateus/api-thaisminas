from rest_framework.serializers import ModelSerializer

from .models import Project, Categorie


class ProjectSerializer(ModelSerializer):

    class Meta:
        model = Project
        fields = (
            'name', 
            'description_short', 
            'content', 
            'cover_image',
            'slug'
        )


class CategorieSerializer(ModelSerializer):

    class Meta:
        model = Categorie
        fields = (
            'name',
            'slug'
        )


class CategorieProjectsSerializer(ModelSerializer):

    projects = ProjectSerializer(many=True)

    class Meta:
        model = Categorie
        fields = (
            'name',
            'slug',
            'projects'
        )
