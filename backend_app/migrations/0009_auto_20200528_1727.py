# Generated by Django 3.0.4 on 2020-05-28 11:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('backend_app', '0008_auto_20200528_1726'),
    ]

    operations = [
        migrations.AlterField(
            model_name='productdetails',
            name='price',
            field=models.BigIntegerField(blank=True, default=0, null=True),
        ),
    ]
