# Generated by Django 3.0.4 on 2020-06-06 07:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Reviews',
            fields=[
                ('review_id', models.AutoField(primary_key=True, serialize=False)),
                ('rating', models.DecimalField(blank=True, decimal_places=1, default=1.0, max_digits=2, null=True)),
                ('submission_date', models.DateField(auto_now_add=True, null=True)),
                ('p_email', models.EmailField(blank=True, default='', max_length=255, null=True)),
                ('u_email', models.EmailField(blank=True, default='', max_length=255, null=True)),
                ('review', models.CharField(blank=True, default='', max_length=255, null=True)),
            ],
        ),
    ]
