# Generated by Django 3.2.4 on 2021-07-02 13:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ftp', '0002_auto_20210702_1806'),
    ]

    operations = [
        migrations.AlterField(
            model_name='multiplefiledocument',
            name='subDocument',
            field=models.CharField(default='default', max_length=100),
        ),
        migrations.AlterField(
            model_name='singlefiledocument',
            name='subDocument',
            field=models.CharField(default='default', max_length=100),
        ),
    ]
