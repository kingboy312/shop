from django import forms
from .models import *
class registerForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ['username', 'email',  'password']
        labels = {'username', 'email',  'password'}
        password2 = forms.CharField(
            label=_("Password confirmation"),
            widget=forms.PasswordInput(attrs={'autocomplete': 'new-password'}),
            strip=False,
            help_text=_("Enter the same password as before, for verification."),
        )