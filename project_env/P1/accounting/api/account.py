from typing import List

from ninja import Router

from accounting.models import Account
from accounting.schemas import AccountOut, Four0FourOut

account_router = Router()


@account_router.get("/get_all", response=List[AccountOut])
def get_all(request):
    accounts = Account.objects.all()
    return accounts


@account_router.get("/get_one/{account_id}/", response={
    200: AccountOut,
    404: Four0FourOut
})
def get_one(request, account_id: int):
    try:
        accounts = Account.objects.get(id=account_id)
        return accounts
    except Account.DoesNotExist:
        return 404, {'detail': f'Account with id {account_id} does not exist'}
