# Generated by Django 3.0.4 on 2020-06-01 11:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('backend_app', '0010_categories_image'),
    ]

    operations = [
        migrations.CreateModel(
            name='TemporaryCart',
            fields=[
                ('t_id', models.AutoField(primary_key=True, serialize=False)),
                ('product', models.IntegerField(blank=True, default=0, null=True)),
                ('p_name', models.CharField(blank=True, default='', max_length=255, null=True)),
                ('price', models.BigIntegerField(blank=True, default=0, null=True)),
                ('quantity', models.IntegerField(blank=True, default=0, null=True)),
                ('total_price', models.BigIntegerField(blank=True, default=0, null=True)),
            ],
        ),
        migrations.AddField(
            model_name='productdetails',
            name='quantity',
            field=models.IntegerField(blank=True, default=0, null=True),
        ),
    ]
