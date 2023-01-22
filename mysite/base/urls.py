from . import views
from django.urls import path

urlpatterns = [
    path('route', views.route, name="route"),
	path('map', views.map, name="map"),
    path('login/', views.loginUser,name='login'),
    path('logout/', views.logoutUser,name='logout'),
    path('sign-in/', views.signUser,name='sign-in'),
    path('', views.index,name='index'),
    path('flights/', views.flights, name = 'flights'),
    path('hotels/', views.hotels, name = 'hotels'),
    path('events/', views.events, name = 'events'),
    path('tours/', views.tours, name = 'tours'),
    path('discover/', views.discovery, name = 'discover'),
    path('/flights/flightinfo/', views.flightinfo, name = 'flightinfo'),
]