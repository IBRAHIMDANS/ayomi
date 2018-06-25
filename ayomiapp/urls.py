from django.conf.urls import url, include
from . import views


urlpatterns = [
    url(r'^$', views.home, name='index'),
    url(r'^profil$', views.profil, name='profil'),
    url(r'^deconnexion$', views.deconnexion, name='deconnexion'),
    url(r'^contact$', views.contact, name='contact'),
    url(r'^404$', views.nono, name='nono'),


]
