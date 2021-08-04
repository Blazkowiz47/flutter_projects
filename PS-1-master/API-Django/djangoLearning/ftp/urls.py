# -*- coding: utf-8 -*-
from django.conf.urls import url
from . import views

app_name = 'ftp'

urlpatterns = [
    url(r'^sendSingleFile/$', views.sendSingleFile, name="sendSingleFile"),
    url(r'^sendMultiFile/$', views.sendMultiFile, name="sendMultiFile"),
    url(r'^test/$' , views.test , name = "test"),
]
