from rest_framework.serializers import ModelSerializer

from .models import Project, Categorie, File


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


class FileSerializer(ModelSerializer):

    class Meta:
        model = File
        lookup_field = 'project__slug'
        fields = (
            'files',
        )
