from django.shortcuts import render,redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.forms import UserCreationForm
from django.contrib import messages
from django.contrib.auth.models import User
from .mixins import Directions
from mysite import settings
import requests, json
# Create your views here.
def discovery(request):
    with open ('data.json') as json_file:
        data = json.load(json_file)
    return render (request, 'base/discovery.html', {'data': data})    
def loginUser(request):
    if request.method == "POST":
        name = request.POST.get('username')
        passcode = request.POST.get('password')
        user = authenticate(request, username=name, password=passcode)
        if user is not None:
            login(request, user)
            messages.success(request,'Logged In')
            return redirect('index')
        else:
            messages.error(request, 'Username or password does not exist.')
    return render(request, 'base/login.html')
def logoutUser(request):
    logout(request)
    return redirect('login')
def signUser(request):
    if request.method == "POST":
        username = request.POST.get('username')
        password = request.POST.get('password')
        password1 = request.POST.get('password1')

        if password==password1:
            if User.objects.filter(username=username).exists():
                messages.info(request,'Username already taken')
                return redirect('register')
            else:
                user = User.objects.create_user(username=username,password=password)
                user.save()
                user_login = authenticate(username=username,password=password)
                login(request,user_login)
                return redirect('index')
        else:
            messages.info(request,'password did not match')
            return redirect('register')
    return render(request,'base/sign-in.html')
def index(request):
    with open ('data.json') as json_file:
        data = json.load(json_file)
    return render (request, 'base/index.html', {'data': data})   

def flights(request):
    if request.method == "POST":
        return redirect('flightinfo')
    return render(request,'base/flights.html')
def flightinfo(request):
    return render(request,'base/flightinfo.html')
def hotels(request):
    return render(request,'base/hotels.html')
def events(request):
    return render(request,'base/events.html')
def tours(request):
    return render(request,'base/tours.html')
def discovery(request):
    return render(request,'base/discovery.html')

def route(request):

	context = {"google_api_key": settings.GOOGLE_API_KEY}
	return render(request, 'base/route.html', context)



def map(request):

	lat_a = request.GET.get("lat_a")
	long_a = request.GET.get("long_a")
	lat_b = request.GET.get("lat_b")
	long_b = request.GET.get("long_b")
	directions = Directions(
		lat_a= lat_a,
		long_a=long_a,
		lat_b = lat_b,
		long_b=long_b
		)

	context = {
	"google_api_key": settings.GOOGLE_API_KEY,
	"lat_a": lat_a,
	"long_a": long_a,
	"lat_b": lat_b,
	"long_b": long_b,
	"origin": f'{lat_a}, {long_a}',
	"destination": f'{lat_b}, {long_b}',
	"directions": directions,

	}
	return render(request, 'base/map.html', context)