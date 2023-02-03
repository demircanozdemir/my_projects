from django.contrib import admin
from .models import Calisanlar,Musteriler,Urunler,Tedarikciler

class UrunAdmin(admin.ModelAdmin):
    list_display = ('barcode','brand','model','stock','price')
    list_display_links = ('barcode','brand','model','stock','price')
    list_filter = ('brand',)
    search_fields = ('barcode','brand','model','stock','price')
    list_per_page = 10

class CalisanAdmin(admin.ModelAdmin):
    list_display = ('fullName','mail','score')
    list_filter = ('fullName','score',)


class MusteriAdmin(admin.ModelAdmin):
    list_display = ('customerID','fullName','date')
    list_filter = ('date',)
    list_display_links = ('customerID','fullName')

class TedarikAdmin(admin.ModelAdmin):
    list_display = ("comp_name","tel_no","mail","adress")
    list_display = ("comp_name",)
    list_filter = ("comp_name", "ted_id")
    # def has_delete_permission(self, request, obj=None):
    #     return False

# Register your models here.
admin.site.register(Tedarikciler,TedarikAdmin)
admin.site.register(Urunler, UrunAdmin)
admin.site.register(Calisanlar, CalisanAdmin)
admin.site.register(Musteriler,MusteriAdmin)
