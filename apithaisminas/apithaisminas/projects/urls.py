from django.urls import path
from .views import ProjectView, CategorieView

app_name = 'projects'

urlpatterns = [
    path('', ProjectView.as_view({'get': 'list'}), name='api-projects-list'),
    path('<slug:slug>/', ProjectView.as_view({'get': 'retrieve'}), name='api-projects-get'),
    path('categories', CategorieView.as_view({'get': 'list'}), name='api-projects-categories-list'),
    path('categories/<slug:slug>', CategorieView.as_view({'get': 'retrieve'}), name='api-projects-categories-get')
]