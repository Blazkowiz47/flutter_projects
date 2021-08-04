# -*- coding: utf-8 -*-
from django import forms
from . import models


class SingleDocumentForm(forms.Form):
    class Meta:
        model = models.SingleFileDocument
        fields = ['subDocument', 'docFile']
