# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.http import HttpResponse , JsonResponse
from django.shortcuts import render , redirect , render
from django.views.generic import TemplateView
from django.conf import settings
from django.core.urlresolvers import reverse
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponsePermanentRedirect
from pprint import pprint
from django.views.decorators.csrf import csrf_exempt

from .forms import connexionform
from .forms import ajoutuser
from .forms import modifuser


from ayomiapp.models import AuthUser
from ayomiapp.models import User


def home(request):

    error = False
    if request.method == "POST":
        form = connexionform(request.POST)
        if form.is_valid():
            username = form.cleaned_data["username"]
            password = form.cleaned_data["password"]
            user = authenticate(username=username, password=password)  # Nous vérifions si les données sont correctes
            if user:  # Si l'objet renvoyé n'est pas None
                login(request, user)  # nous connectons l'utilisateur
            else: # sinon une erreur sera affichée
                error = True
    else:
        form = connexionform()

    return render(request,'index.html',locals())

def profil(request):
    if request.user.is_authenticated:

        user = User.objects.all()

        useradd = ajoutuser(request.POST)
        if useradd.is_valid():
            useradd.save()

        usermod = modifuser(request.POST)
        if usermod.is_valid():
            instance= usermod.save(commit=False)
            instance.id = request.user
            instance.save()
    else  :
        return render(request,'404.html',locals())

    return render(request,'profil.html',locals())

def deconnexion(request):
    logout(request)
    return redirect(reverse(home))

def contact(request):

    return render(request,'contact.html',locals())

def nono(request):

    return render(request,'404.html',locals())
