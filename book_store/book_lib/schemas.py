from ninja import Schema


class BookOut(Schema):
    id: int
    name_book: str
    author_book: str
    price_book: str
    description_book: str
    image_url:str