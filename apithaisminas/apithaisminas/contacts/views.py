from .models import Contact
from .serializers import ContactSerializer

from rest_framework.viewsets import ViewSet
from rest_framework.response import Response
from rest_framework import status

class ContactView(ViewSet):

    def post(self, request, format=None):
        serializer = ContactSerializer(data=request.data)

        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
