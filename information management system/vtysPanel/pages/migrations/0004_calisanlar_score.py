# Generated by Django 4.1.1 on 2023-01-08 22:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("pages", "0003_alter_calisanlar_id"),
    ]

    operations = [
        migrations.AddField(
            model_name="calisanlar",
            name="score",
            field=models.IntegerField(default=0),
        ),
    ]
