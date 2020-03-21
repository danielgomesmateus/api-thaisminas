from django.urls import path
from .views import PageView

app_name = 'pages'

urlpatterns = [
    path('<slug:slug>/', PageView.as_view({'get': 'retrieve'}), name='api-pages-get')
]