from django.urls import path
from .views import GalleryView

app_name = 'galleries'

urlpatterns = [
    path('albuns/', GalleryView.as_view({'get': 'list'}), name='api-albuns-list'),
    path('albuns/<slug:slug>/', GalleryView.as_view({'get': 'retrieve'}), name='api-albuns-get'),
]