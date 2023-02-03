from django.db import models

# Create your models here.

class Urunler(models.Model):
    barcode = models.AutoField(primary_key=True, blank=False, verbose_name='Barkod')
    brand = models.CharField(max_length=50, verbose_name='Marka')
    model = models.CharField(max_length=100, verbose_name='Model')
    stock = models.IntegerField(verbose_name='Stok Sayısı')
    price = models.BigIntegerField(verbose_name='Fiyat')

class Calisanlar(models.Model):
    id = models.BigIntegerField(primary_key=True, blank=False, verbose_name="TC")
    fullName = models.CharField(max_length=45, verbose_name='İsim Soyisim')
    telNo = models.BigIntegerField(verbose_name='İletişim No')
    mail = models.CharField(max_length=50,verbose_name='E-posta')
    adress = models.CharField(max_length=100,verbose_name='Adres')
    score = models.IntegerField(default=0)

class Musteriler(models.Model):
    customerID = models.AutoField(primary_key=True,blank=False, verbose_name='Müşteri Kimliği')
    fullName = models.CharField(max_length=45,verbose_name='Müşteri Adı')
    telNo = models.CharField(max_length=11,verbose_name='İletişim No')
    adress = models.CharField(max_length=100,verbose_name='Adres')
    date = models.DateTimeField(auto_now=True, verbose_name='Kayıt Tarihi')

class Tedarikciler(models.Model):
    ted_id = models.AutoField(primary_key=True)
    comp_name = models.CharField(max_length=60,verbose_name="Tedarikçi Şirket")
    tel_no = models.BigIntegerField(verbose_name="İletişim No")
    mail = models.CharField(max_length=50,verbose_name='E-posta')
    adress = models.CharField(max_length=100,verbose_name='Adres')