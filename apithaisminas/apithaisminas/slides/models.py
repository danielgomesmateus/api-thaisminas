from django.db import models


class Slide(models.Model):
    id = models.AutoField(primary_key=True)
    title = models.CharField('Título:', max_length=35)
    description_short = models.CharField('Descrição curta:', max_length=150)
    image = models.ImageField('Imagem:', max_length=255, upload_to='slides')
    status = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        verbose_name = 'Slide'
        verbose_name_plural = 'Slides'
        ordering = ['-id']

    def __str__(self):
        return self.title
