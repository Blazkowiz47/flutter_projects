from django.contrib.auth import login
from django.http.response import HttpResponse
from articles.models import Article
from django.shortcuts import redirect, render
from django.contrib.auth.decorators import login_required
from pyftpdlib.authorizers import DummyAuthorizer
from pyftpdlib.handlers import FTPHandler
from pyftpdlib.servers import FTPServer
from . import forms

global server


def article_list(request):
    articles = Article.objects.all().order_by('date')
    return render(request, 'articles/article_list.html', {'articles': articles})


def article_detail(request, slug):
    article = Article.objects.get(slug=slug)
    return render(request, 'articles/article_detail.html', {'article': article})


@login_required(login_url="/accounts/login")
def article_create(request):
    if request.method == 'POST':
        form = forms.CreateArticle(request.POST, request.FILES)
        if form.is_valid():
            # save article to DB
            instance = form.save(commit=False)
            instance.author = request.user
            instance.save()
            return redirect('articles:list')
    else:
        form = forms.CreateArticle()
    return render(request, 'articles/article_create.html', {'form': form})


def start_server(request):
    authorizer = DummyAuthorizer()
    authorizer.add_user("user", "12345", "/home/username", perm="elradfmw")
    authorizer.add_anonymous("/home/username", perm="elradfmw")

    handler = FTPHandler
    handler.authorizer = authorizer
    global server
    server = FTPServer(("192.168.0.103", 2022), handler)
    server.serve_forever()
    return HttpResponse()


def stop_server(request):
    global server
    server.close_all()
    return HttpResponse()
