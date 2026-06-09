from django.contrib import admin
from .models import UserDevice, AppNotification, UserNotification


@admin.register(UserDevice)
class UserDeviceAdmin(admin.ModelAdmin):
    list_display = ['user', 'device_type', 'is_active', 'created_at', 'updated_at']
    list_filter = ['device_type', 'is_active']
    search_fields = ['user__username', 'user__email', 'fcm_token']
    raw_id_fields = ['user']
    readonly_fields = ['created_at', 'updated_at']


@admin.register(AppNotification)
class AppNotificationAdmin(admin.ModelAdmin):
    list_display = ['title', 'notification_type', 'target_universite', 'target_filiere',
                    'target_promotion', 'sender', 'created_at']
    list_filter = ['notification_type', 'target_universite', 'target_promotion']
    search_fields = ['title', 'body']
    raw_id_fields = ['sender']
    readonly_fields = ['created_at']


@admin.register(UserNotification)
class UserNotificationAdmin(admin.ModelAdmin):
    list_display = ['user', 'notification', 'is_read', 'read_at', 'created_at']
    list_filter = ['is_read']
    search_fields = ['user__username', 'notification__title']
    raw_id_fields = ['user', 'notification']
    readonly_fields = ['created_at']
