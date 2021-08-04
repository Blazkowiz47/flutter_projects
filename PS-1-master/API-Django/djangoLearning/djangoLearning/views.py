from django.http import HttpResponse
from django.shortcuts import render
import ftplib


def about(request):
    return render(request, 'about.html')
    # return HttpResponse("About")


def contactUs(request):
    return HttpResponse("Contact Us")


def home(request):
    return render(request, 'homepage.html')
    # return  HttpResponse("Home Page")


