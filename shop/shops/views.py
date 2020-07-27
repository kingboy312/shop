from django.shortcuts import render
from .form import *
from django.http import HttpResponseRedirect
from django.contrib.auth import logout,authenticate,login
from django.contrib.auth.forms import UserCreationForm
# Create your views here.
def register(requst):
    if requst.methond != 'POST':
        form = registerForm()
    else:
        form = registerForm(data=requst.POST)
        if form.is_valid():
            new_user = form.save()
            login(requst, new_user)
            return HttpResponseRedirect('/learninglog/')
    context = {'form': form}
    return render(requst, 'user/register.html', context)