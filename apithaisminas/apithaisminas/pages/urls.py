from django.urls import path
from .views import PageView

app_name = 'page'

urlpatterns = [
    path('<slug:slug>/', PageView.as_view({'get': 'retrieve'}), name='api-page-get')
]