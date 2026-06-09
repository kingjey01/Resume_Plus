from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.models import User
from .models import UserProfile


class UserProfileInline(admin.StackedInline):
    model = UserProfile
    can_delete = False
    verbose_name_plural = 'Profil'


class CustomUserAdmin(UserAdmin):
    inlines = (UserProfileInline,)


# Re-register UserAdmin
admin.site.unregister(User)
admin.site.register(User, CustomUserAdmin)


@admin.register(UserProfile)
class UserProfileAdmin(admin.ModelAdmin):
    list_display = ['user', 'groupe', 'universite', 'promotion', 'filiere', 'points', 'created_at']
    list_filter = ['groupe', 'universite', 'promotion', 'filiere', 'created_at']
    search_fields = ['user__username', 'user__email', 'universite__nom', 'filiere__nom']
    readonly_fields = ['created_at', 'updated_at']
