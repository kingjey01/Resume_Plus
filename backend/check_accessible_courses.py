import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'resume_backend.settings')
django.setup()

from django.contrib.auth.models import User
from courses.models import Course

try:
    u = User.objects.get(username='cp_info')
    profile = u.profile
    
    print(f'User: {u.username}')
    print(f'Universite: {profile.universite}')
    print(f'Promotion: {profile.promotion}')
    print(f'Filiere: {profile.filiere}')
    print()
    
    # Tous les cours
    all_courses = Course.objects.all()
    print(f'Total courses in DB: {all_courses.count()}')
    
    # Cours avec FK remplis
    courses_with_fk = Course.objects.filter(
        universite_fk__isnull=False,
        promotion_fk__isnull=False,
        filiere_fk__isnull=False
    )
    print(f'Courses with FK filled: {courses_with_fk.count()}')
    
    # Cours accessibles par cet utilisateur
    accessible_courses = Course.objects.filter(
        universite_fk=profile.universite,
        promotion_fk=profile.promotion,
        filiere_fk=profile.filiere
    )
    print(f'Accessible courses for {u.username}: {accessible_courses.count()}')
    
    if accessible_courses.exists():
        print('\nAccessible courses:')
        for c in accessible_courses[:5]:
            print(f'  - {c.nom} ({c.universite_fk.nom if c.universite_fk else "?"} / {c.filiere_fk.nom if c.filiere_fk else "?"})')
    else:
        print('\nNo accessible courses found!')
        print('\nChecking promotion match:')
        print(f'User promotion: {profile.promotion} (ID: {profile.promotion.id})')
        print('\nAll courses promotions:')
        for c in courses_with_fk[:5]:
            print(f'  - {c.nom}: promotion_fk={c.promotion_fk} (ID: {c.promotion_fk.id if c.promotion_fk else None})')
            
except User.DoesNotExist:
    print('User cp_info not found')
