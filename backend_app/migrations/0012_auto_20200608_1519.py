# Generated by Django 3.0.4 on 2020-06-08 09:49

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('backend_app', '0011_auto_20200601_1656'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='roledetails',
            name='otp',
        ),
        migrations.RemoveField(
            model_name='roledetails',
            name='otp_time',
        ),
    ]