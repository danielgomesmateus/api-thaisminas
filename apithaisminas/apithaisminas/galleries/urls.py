from django.urls import path
from .views import GalleryView

app_name = 'gallery'

urlpatterns = [
    path('album/', GalleryView.as_view({'get': 'list'}), name='api-albuns-list'),
    path('album/<slug:slug>/', GalleryView.as_view({'get': 'retrieve'}), name='api-albuns-get'),
]