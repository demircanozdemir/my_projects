from django.shortcuts import render
from django.http import HttpResponse
from .models import Musteriler,Urunler,Calisanlar,Tedarikciler
# Create your views here.
#http://127.0.0.1:8000




def index(request):
    return render(request, 'pages/index.html')

def urunler(request):
    urunler = Urunler.objects.all()
    context = {
        'urunler': urunler
    }
    return render(request, 'pages/urunler.html',context)

def musteriler(request):
    musteriler = Musteriler.objects.all()
    context = {
        'musteriler': musteriler
    }
    return render(request, 'pages/musteriler.html',context)

def tedarikciler(request):
    tedarikciler = Tedarikciler.objects.all()
    context = {
        'tedarikciler': tedarikciler
    }
    return render(request, 'pages/tedarikciler.html',context)

def calisanlar(request):
    calisanlar = Calisanlar.objects.all()
    context = {
        'calisanlar': calisanlar
    }
    return render(request, 'pages/calisanlar.html',context)