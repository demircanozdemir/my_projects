from django.urls import path
from . import views

#http://127.0.0.1:8000
urlpatterns = [
    path('', views.index, name = 'index'),
    path('urunler.html', views.urunler, name='urunler'),
    path('musteriler.html', views.musteriler, name='musteriler'),
    path('tedarikciler.html', views.tedarikciler, name='tedarikciler'),
    path('calisanlar.html', views.calisanlar, name='calisanlar'),
]