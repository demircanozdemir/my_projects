# Generated by Django 4.1.1 on 2023-01-09 15:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("pages", "0006_alter_musteriler_customerid"),
    ]

    operations = [
        migrations.AlterField(
            model_name="musteriler",
            name="date",
            field=models.DateTimeField(auto_now=True, verbose_name="Kayıt Tarihi"),
        ),
    ]
