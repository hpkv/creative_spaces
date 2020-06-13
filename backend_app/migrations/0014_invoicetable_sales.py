# Generated by Django 3.0.4 on 2020-06-09 11:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('backend_app', '0013_temporarycart_image'),
    ]

    operations = [
        migrations.CreateModel(
            name='InvoiceTable',
            fields=[
                ('invoice', models.AutoField(primary_key=True, serialize=False)),
                ('amount', models.BigIntegerField(blank=True, default=0, null=True)),
                ('u_email', models.EmailField(blank=True, default='', max_length=255, null=True)),
                ('status', models.NullBooleanField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='Sales',
            fields=[
                ('t_id', models.AutoField(primary_key=True, serialize=False)),
                ('u_email', models.EmailField(blank=True, default='', max_length=255, null=True)),
                ('product', models.IntegerField(blank=True, default=0, null=True)),
                ('p_name', models.CharField(blank=True, default='', max_length=255, null=True)),
                ('price', models.BigIntegerField(blank=True, default=0, null=True)),
                ('quantity', models.IntegerField(blank=True, default=0, null=True)),
                ('total_price', models.BigIntegerField(blank=True, default=0, null=True)),
                ('image', models.CharField(blank=True, default='', max_length=255, null=True)),
            ],
        ),
    ]
