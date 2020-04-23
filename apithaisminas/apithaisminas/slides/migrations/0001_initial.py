# Generated by Django 3.0.4 on 2020-04-22 23:55

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Slide',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('title', models.CharField(max_length=35, verbose_name='Título:')),
                ('description_short', models.CharField(max_length=150, verbose_name='Descrição curta:')),
                ('image', models.ImageField(max_length=255, upload_to='slides', verbose_name='Imagem:')),
                ('status', models.BooleanField(default=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
            options={
                'verbose_name': 'Slide',
                'verbose_name_plural': 'Slides',
                'ordering': ['-id'],
            },
        ),
    ]
