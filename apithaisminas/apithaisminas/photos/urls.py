from django.urls import path
from .views import PhotoView

app_name = 'photo'

urlpatterns = [
    path('', PhotoView.as_view({'get':'list'}), name='api-photo-list'),
    path('<slug:slug>/', PhotoView.as_view({'get': 'retrieve'}), name='api-photo-get')
]