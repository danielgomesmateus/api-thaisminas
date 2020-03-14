from django.db import models

class Project(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField('Nome:', max_length=50)
    description_short = models.CharField('Descrição curta:', max_length=50)
    content = models.TextField('Conteúdo:')
    cover_image = models.ImageField('Imagem de capa:', max_length=100, upload_to='images')
    slug = models.SlugField('Identificador:', max_length=50)
    status = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        verbose_name = 'Projeto'
        verbose_name_plural = 'Projetos'
        ordering = [
            'id',
            'name',
            'description_short',
            'content',
            'created_at',
            'updated_at'
        ]

    def __str__(self):
        return self.name
