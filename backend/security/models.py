from django.db import models
from django.contrib.auth.models import User


class SecurityLog(models.Model):
    ACTION_TYPES = [
        ('screenshot_attempt', 'Tentative de capture d\'écran'),
        ('copy_attempt', 'Tentative de copie'),
        ('export_attempt', 'Tentative d\'export'),
        ('suspicious_activity', 'Activité suspecte'),
    ]
    
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='security_logs')
    action_type = models.CharField(max_length=30, choices=ACTION_TYPES)
    description = models.TextField(blank=True, null=True)
    ip_address = models.GenericIPAddressField(blank=True, null=True)
    user_agent = models.TextField(blank=True, null=True)
    timestamp = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return f"{self.user.username} - {self.get_action_type_display()} - {self.timestamp}"
    
    class Meta:
        verbose_name = "Log de Sécurité"
        verbose_name_plural = "Logs de Sécurité"
        ordering = ['-timestamp']
