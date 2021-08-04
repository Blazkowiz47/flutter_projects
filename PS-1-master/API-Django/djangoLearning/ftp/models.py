from djangoLearning.settings import MEDIA_ROOT
from django.db import models

# Create your models here.


class SingleFileDocument(models.Model):
    subDocument = models.CharField(max_length=100, default="default")
    docFile = models.FileField(upload_to=MEDIA_ROOT)


class MultipleFileDocument(models.Model):
    subDocument = models.CharField(max_length=100, default="default")
    docFile = models.FileField(upload_to=MEDIA_ROOT)
    docFile2 = models.FileField(upload_to=MEDIA_ROOT)
