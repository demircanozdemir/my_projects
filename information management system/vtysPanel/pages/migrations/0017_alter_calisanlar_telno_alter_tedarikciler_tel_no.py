# Generated by Django 4.1.1 on 2023-01-09 19:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("pages", "0016_tedarikciler"),
    ]

    operations = [
        migrations.AlterField(
            model_name="calisanlar",
            name="telNo",
            field=models.BigIntegerField(verbose_name="İletişim No"),
        ),
        migrations.AlterField(
            model_name="tedarikciler",
            name="tel_no",
            field=models.BigIntegerField(verbose_name="İletişim No"),
        ),
    ]