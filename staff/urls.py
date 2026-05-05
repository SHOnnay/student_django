from django.urls import path
from . import views

urlpatterns = [
    path('list/', views.staff_list_view, name='staff_list_view'),
    path('get-data/', views.get_staff_data, name='get_staff_data'),
    path('add-data/', views.add_staff_data, name='add_staff_data'),
    path('get-designation/', views.get_designation, name='get_designation')
]
