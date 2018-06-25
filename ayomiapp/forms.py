from django import forms
from .models import AuthUser
from .models import User


class connexionform(forms.Form):

    username = forms.CharField(label="Nom d'utilisateur", max_length=30)
    password = forms.CharField(label="Mot de passe", widget=forms.PasswordInput)


class ajoutuser(forms.ModelForm):
    class Meta:
        model = User
        fields = '__all__'
        # exclude = ['last_login','is_staff','is_active','date_joined']

class modifuser(forms.ModelForm):
    class Meta:
        model = User
        fields = 'id','email'
