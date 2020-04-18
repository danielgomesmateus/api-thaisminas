from django.contrib import admin
from .models import Project, Categorie


class ProjectAdmin(admin.ModelAdmin):
    list_display = [
        'name', 
        'categorie', 
        'slug',
        'status'
    ]


class CategorieAdmin(admin.ModelAdmin):
    list_display = [
        'name',
        'slug',
        'status'
    ]


admin.site.register(Project, ProjectAdmin)
admin.site.register(Categorie, CategorieAdmin)
