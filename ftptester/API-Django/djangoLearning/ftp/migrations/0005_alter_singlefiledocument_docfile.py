# Generated by Django 3.2.4 on 2021-07-02 14:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ftp', '0004_alter_singlefiledocument_docfile'),
    ]

    operations = [
        migrations.AlterField(
            model_name='singlefiledocument',
            name='docFile',
            field=models.FileField(upload_to='G:\\Media'),
        ),
    ]
