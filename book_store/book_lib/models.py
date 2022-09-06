from django.db import models

# Create your models here.

class Books(models.Model):
    name_book=models.CharField(max_length=100)
    author_book=models.CharField(max_length=100)
    price_book=models.CharField(max_length=10)
    description_book=models.CharField(max_length=750)
    image_url=models.CharField(max_length=255)