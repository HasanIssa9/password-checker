from ninja import Router
from typing import List
from rest_framework import status
from book_lib.models import Books
from book_lib.schemas import BookOut

book_router=Router()

@book_router.get('/get_books',response=List[BookOut])
def get_books(request):
    return status.HTTP_200_OK, Books
