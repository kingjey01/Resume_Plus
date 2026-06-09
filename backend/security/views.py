from rest_framework import generics, permissions, status
from rest_framework.decorators import api_view, permission_classes
from rest_framework.response import Response
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.filters import OrderingFilter
from .models import SecurityLog
from .serializers import SecurityLogSerializer, CreateSecurityLogSerializer


class SecurityLogListCreateView(generics.ListCreateAPIView):
    permission_classes = [permissions.IsAuthenticated]
    filter_backends = [DjangoFilterBackend, OrderingFilter]
    filterset_fields = ['action_type']
    ordering_fields = ['timestamp']
    ordering = ['-timestamp']
    
    def get_queryset(self):
        user = self.request.user
        if user.profile.role == 'admin':
            return SecurityLog.objects.all()
        return SecurityLog.objects.filter(user=user)
    
    def get_serializer_class(self):
        if self.request.method == 'POST':
            return CreateSecurityLogSerializer
        return SecurityLogSerializer


@api_view(['POST'])
@permission_classes([permissions.IsAuthenticated])
def log_security_event(request):
    """
    Enregistrer un événement de sécurité
    """
    serializer = CreateSecurityLogSerializer(data=request.data, context={'request': request})
    if serializer.is_valid():
        serializer.save()
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
