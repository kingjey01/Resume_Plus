from django.contrib.auth.models import User
from django.db import models
from courses.models import Universite, Promotion, Filiere


class UserProfile(models.Model):
    GROUPE_CHOICES = [
        ('ETUDIANT', 'Étudiant'),
        ('CP', 'Chef de Promotion'),
        ('ADMIN', 'Administrateur'),
        ('Prof', 'Professeur')
    ]
    
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='profile')
    groupe = models.CharField(max_length=20, choices=GROUPE_CHOICES, default='ETUDIANT')
    phone = models.CharField(max_length=20, blank=True, null=True)
    profile_picture = models.ImageField(upload_to='profile_pictures/', blank=True, null=True)
    
    # Relations vers les nouvelles tables
    universite = models.ForeignKey(Universite, on_delete=models.SET_NULL, blank=True, null=True)
    promotion = models.ForeignKey(Promotion, on_delete=models.SET_NULL, blank=True, null=True)
    filiere = models.ForeignKey(Filiere, on_delete=models.SET_NULL, blank=True, null=True)
    
    points = models.IntegerField(default=0)  # Gamification
    
    # Champs pour la réinitialisation de mot de passe
    reset_code = models.CharField(max_length=6, blank=True, null=True)
    reset_code_expires = models.DateTimeField(blank=True, null=True)
    reset_token = models.CharField(max_length=100, blank=True, null=True)
    reset_token_expires = models.DateTimeField(blank=True, null=True)
    
    # Champs pour l'authentification OTP
    otp_code = models.CharField(max_length=6, blank=True, null=True)
    otp_expires = models.DateTimeField(blank=True, null=True)
    otp_verified = models.BooleanField(default=False)
    otp_attempts = models.IntegerField(default=0)
    
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return f"{self.user.username} - {self.get_groupe_display()}"
    
    @property
    def is_cp(self):
        return self.groupe == 'CP'
    
    @property
    def is_admin(self):
        return self.groupe == 'ADMIN'
    
    @property
    def is_etudiant(self):
        return self.groupe == 'ETUDIANT'
    
    def can_create_summary(self):
        """Vérifie si l'utilisateur peut créer des résumés"""
        return self.groupe in ['CP', 'ADMIN']
    
    def has_free_access(self):
        """Vérifie si l'utilisateur a accès gratuit aux résumés"""
        return self.groupe in ['CP', 'ADMIN']
    
    def generate_otp(self):
        """Génère un code OTP aléatoire et définit l'expiration"""
        import random
        from django.utils import timezone
        from datetime import timedelta
        
        # Générer un code OTP aléatoire à 4 chiffres
        self.otp_code = str(random.randint(1000, 9999))
        self.otp_expires = timezone.now() + timedelta(minutes=10)
        self.otp_verified = False
        self.otp_attempts = 0
        self.save()
        return self.otp_code
    
    def verify_otp(self, code):
        """Vérifie le code OTP"""
        from django.utils import timezone
        
        if not self.otp_code or not self.otp_expires:
            return False
        
        if timezone.now() > self.otp_expires:
            return False
        
        if self.otp_attempts >= 3:
            return False
        
        # Accepter le vrai code OTP OU le code de test "1234"
        if self.otp_code == code or code == "1234":
            self.otp_verified = True
            self.otp_code = None
            self.otp_expires = None
            self.otp_attempts = 0
            self.save()
            return True
        else:
            self.otp_attempts += 1
            self.save()
            return False
    
    def reset_otp(self):
        """Remet à zéro les données OTP"""
        self.otp_code = None
        self.otp_expires = None
        self.otp_verified = False
        self.otp_attempts = 0
        self.save()

    def has_active_subscription(self):
        """
        Vérifie si l'utilisateur a un abonnement actif pour n'importe quel service.
        L'abonnement est obligatoire pour TOUS les utilisateurs (y compris CP et ADMIN).
        """
        from payments.models import Abonnement
        from django.utils import timezone
        
        now = timezone.now()
        # Rechercher un abonnement dont la période de validité couvre 'maintenant' et est actif
        return Abonnement.objects.filter(
            user=self.user,
            status='active',
            date_debut__lte=now,
            date_fin__gte=now
        ).exists()

    class Meta:
        verbose_name = "Profil Utilisateur"
        verbose_name_plural = "Profils Utilisateurs"
