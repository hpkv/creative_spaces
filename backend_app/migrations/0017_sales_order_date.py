# Generated by Django 3.0.4 on 2020-06-12 19:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('backend_app', '0016_auto_20200610_1656'),
    ]

    operations = [
        migrations.AddField(
            model_name='sales',
            name='order_date',
            field=models.DateField(auto_now_add=True, null=True),
        ),
    ]
