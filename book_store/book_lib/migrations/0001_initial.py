# Generated by Django 4.0.6 on 2022-09-01 18:58

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Books',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name_book', models.CharField(max_length=100)),
                ('author_book', models.CharField(max_length=100)),
                ('price_book', models.CharField(max_length=10)),
                ('description_book', models.CharField(max_length=750)),
                ('image_url', models.CharField(max_length=255)),
            ],
        ),
    ]
