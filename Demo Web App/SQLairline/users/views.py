from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.urls import reverse
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User


# Create your views here.
def index(request):
    if not request.user.is_authenticated: 
        return HttpResponseRedirect(reverse("login"))
    return render(request, "users/user.html")

def login_view(request):
    if request.method == "POST":
        username = request.POST["username"]
        password = request.POST["password"]
        user = authenticate(request, username=username, password=password)
        if user is not None: 
            login(request, user)
            return HttpResponseRedirect(reverse("index"))
        else: 
            return render(request, "users/login.html", {
                "message": "Invalid Credentials"
            })

    return render(request, "users/login.html")

def logout_view(request):
    logout(request)
    return render(request, "users/login.html", {
        "message": "Logged out."
    })

def create_account(request):
    if request.method == "POST":
        username = request.POST["username"]
        name = request.POST["name"]
        if " " not in name: 
            return render(request, "users/create.html", {
            "message": "Please enter  your full name: (Ex: 'First Last')"
            })  

        first, last = name.split(" ")
        email = request.POST["email"]
        password = request.POST["password"]
        if User.objects.filter(username=username).exists():
            return render(request, "users/create.html", {
            "message": "This username has been taken! Please enter a new one"
            })    

        user = User.objects.create_user(username=username, first_name=first, \
                                        last_name=last, email=email, password=password)
        
        return render(request, "users/login.html", {
            "message": "Now Try logging in"
        })

    return render(request, "users/create.html")