# Generated by Django 4.1.1 on 2023-01-08 22:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("pages", "0002_calisanlar_alter_urunler_barcode_alter_urunler_brand_and_more"),
    ]

    operations = [
        migrations.AlterField(
            model_name="calisanlar",
            name="id",
            field=models.PositiveBigIntegerField(primary_key=True, serialize=False),
        ),
    ]
