from django.core.management.base import BaseCommand
from courses.models import Course, Universite, Filiere, Promotion


class Command(BaseCommand):
    help = 'Migrer les anciens cours (CharField) vers les nouveaux (ForeignKey)'

    def handle(self, *args, **options):
        self.stdout.write("=" * 60)
        self.stdout.write(self.style.SUCCESS("MIGRATION DES COURS VERS LE SYSTÈME FK"))
        self.stdout.write("=" * 60)
        
        total_courses = Course.objects.count()
        migrated = 0
        errors = 0
        
        self.stdout.write(f"\nTotal de cours à migrer: {total_courses}")
        self.stdout.write("\nDébut de la migration...\n")
        
        for course in Course.objects.all():
            try:
                # Verifier si deja migre
                if course.universite_fk and course.filiere_fk and course.promotion_fk:
                    self.stdout.write(self.style.SUCCESS(f"[OK] Cours '{course.nom}' deja migre"))
                    migrated += 1
                    continue
                
                # Migrer l'universite
                if course.university and not course.universite_fk:
                    try:
                        univ = Universite.objects.get(nom__iexact=course.university.strip())
                        course.universite_fk = univ
                        self.stdout.write(f"  -> Universite: {course.university} -> {univ.nom}")
                    except Universite.DoesNotExist:
                        univ = Universite.objects.create(nom=course.university.strip())
                        course.universite_fk = univ
                        self.stdout.write(self.style.WARNING(f"  -> Universite creee: {univ.nom}"))
                    except Universite.MultipleObjectsReturned:
                        univ = Universite.objects.filter(nom__iexact=course.university.strip()).first()
                        course.universite_fk = univ
                        self.stdout.write(f"  -> Universite (multiple): {univ.nom}")
                
                # Migrer la filiere
                if course.filiere and not course.filiere_fk:
                    try:
                        fil = Filiere.objects.get(nom__iexact=course.filiere.strip())
                        course.filiere_fk = fil
                        self.stdout.write(f"  -> Filiere: {course.filiere} -> {fil.nom}")
                    except Filiere.DoesNotExist:
                        fil = Filiere.objects.create(nom=course.filiere.strip())
                        course.filiere_fk = fil
                        self.stdout.write(self.style.WARNING(f"  -> Filiere creee: {fil.nom}"))
                    except Filiere.MultipleObjectsReturned:
                        fil = Filiere.objects.filter(nom__iexact=course.filiere.strip()).first()
                        course.filiere_fk = fil
                        self.stdout.write(f"  -> Filiere (multiple): {fil.nom}")
                
                # Assigner une promotion par defaut si non definie
                if not course.promotion_fk:
                    try:
                        promo = Promotion.objects.get(nom='L1')
                    except Promotion.DoesNotExist:
                        promo = Promotion.objects.create(nom='L1', annee=2024)
                        self.stdout.write(self.style.WARNING(f"  -> Promotion creee: {promo.nom}"))
                    
                    course.promotion_fk = promo
                    self.stdout.write(f"  -> Promotion assignee: {promo.nom}")
                
                # Sauvegarder
                course.save()
                migrated += 1
                self.stdout.write(self.style.SUCCESS(f"[OK] Cours '{course.nom}' migre avec succes\n"))
                
            except Exception as e:
                errors += 1
                self.stdout.write(self.style.ERROR(f"[ERREUR] Cours '{course.nom}': {str(e)}\n"))
        
        self.stdout.write("=" * 60)
        self.stdout.write(self.style.SUCCESS("RESUME DE LA MIGRATION"))
        self.stdout.write("=" * 60)
        self.stdout.write(f"Total de cours: {total_courses}")
        self.stdout.write(self.style.SUCCESS(f"Migres avec succes: {migrated}"))
        self.stdout.write(self.style.ERROR(f"Erreurs: {errors}"))
        self.stdout.write("=" * 60)
        
        # Verification finale
        self.stdout.write("\nVERIFICATION FINALE:")
        courses_without_fk = Course.objects.filter(
            universite_fk__isnull=True
        ) | Course.objects.filter(
            filiere_fk__isnull=True
        ) | Course.objects.filter(
            promotion_fk__isnull=True
        )
        
        if courses_without_fk.exists():
            self.stdout.write(self.style.WARNING(
                f"[ATTENTION] {courses_without_fk.count()} cours n'ont pas tous les champs FK remplis:"
            ))
            for c in courses_without_fk[:5]:
                self.stdout.write(f"  - {c.nom} (ID: {c.id})")
        else:
            self.stdout.write(self.style.SUCCESS("[OK] Tous les cours ont ete migres avec succes!"))
