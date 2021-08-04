from djangoLearning.settings import MEDIA_ROOT
from django.http.response import Http404, HttpResponse
from .models import MultipleFileDocument, SingleFileDocument
from .forms import SingleDocumentForm
from django.views.decorators.csrf import csrf_exempt
import os
from django.core.files.storage import default_storage
from django.core.files.base import ContentFile
from django.conf import settings
from zipfile import ZipFile


@csrf_exempt
def sendMultiFile(request):
    # handle file upload is post request
    if request.method == 'POST':
        form = SingleDocumentForm(request.POST, request.FILES)

    else:
        raise Http404("Error")


@csrf_exempt
def sendSingleFile(request):
    # handle file upload is post request
    if request.method == 'POST':
        docFile = request.FILES.get('docFile')

        with open(os.path.join(MEDIA_ROOT, request.POST.get('name')), 'wb+') as destination:
            i = 0
            for chunk in docFile.chunks():
                print(i)
                i = i+1
                destination.write(chunk)
            print("file created on ")
            print(os.path.join(MEDIA_ROOT, request.POST.get('name')))
            with ZipFile(os.path.join(MEDIA_ROOT, request.POST.get('name')), 'r') as zipObj:
                print("extracting")
                zipObj.extractall(MEDIA_ROOT)
                print("extracted now removing file")
        os.remove(os.path.join(MEDIA_ROOT, request.POST.get('name')))
        return HttpResponse("Success")
    else:
        return HttpResponse("Got response")

@csrf_exempt
def test(request):
    if request.method == 'POST':
        return HttpResponse("Success")
