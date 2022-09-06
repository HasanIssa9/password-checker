from django.db import models


# Create your models here.
class AccountTypeChoices(models.TextChoices):
    ASSETS = 'ASSETS', 'ASSETS'
    LIABILITIES = 'LIABILITIES', 'LIABILITIES'
    INCOME = 'INCOME', 'INCOME'
    EXPENSES = 'EXPENSES', 'EXPENSES'


class Account(models.Model):
    parent = models.ForeignKey('self', null=True, blank=True, on_delete=models.SET_NULL)
    type = models.CharField(max_length=255, choices=AccountTypeChoices.choices)
    name = models.CharField(max_length=255)
    code = models.CharField(max_length=20)
    full_code = models.CharField(max_length=25)
    extra=models.JSONField(default=dict)

    def __str__(self):
        return f'{self.full_code} - {self.name}'


class Transaction(models.Model):
    type = models.CharField(max_length=255, choices=[
        ('invoice', 'invoice'),
        ('income', 'income'),
        ('expense', 'expense'),
        ('bill', 'bill'),
    ])
    description = models.CharField(max_length=255)


class JournalEntry(models.Model):
    class Meta:
        verbose_name_plural = 'Journal Entries'

    account = models.ForeignKey(Account, on_delete=models.CASCADE)
    transaction = models.ForeignKey(Transaction, on_delete=models.CASCADE)
    amount = models.DecimalField(max_digits=19, decimal_places=2)
    currency = models.CharField(max_length=3, choices=[
        ('USD', 'USD'),
        ('IQD', 'IQD'),
    ])
