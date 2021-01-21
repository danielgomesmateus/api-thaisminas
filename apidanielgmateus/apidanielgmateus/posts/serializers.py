from rest_framework.serializers import ModelSerializer

from .models import Post, Categorie


class PostSerializer(ModelSerializer):

    class Meta:
        model = Post
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


class CategoriePostsSerializer(ModelSerializer):

    posts = PostSerializer(many=True)

    class Meta:
        model = Categorie
        fields = (
            'name',
            'slug',
            'posts'
        )
