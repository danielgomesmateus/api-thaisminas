# Generated by Django 3.0.4 on 2020-03-21 11:32

from django.db import migrations, models
import django.db.models.deletion
import froala_editor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0003_auto_20200314_1740'),
    ]

    operations = [
        migrations.AlterField(
            model_name='project',
            name='categorie',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='projects', to='projects.Categorie'),
        ),
        migrations.AlterField(
            model_name='project',
            name='content',
            field=froala_editor.fields.FroalaField(verbose_name='Conteúdo:'),
        ),
    ]
