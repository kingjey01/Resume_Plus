# Generated manually to align model with DB after migration 0019 loss

from django.db import migrations, models


def migrate_fk_to_m2m(apps, schema_editor):
    """Copie les données des anciens FK vers les nouvelles relations M2M."""
    Course = apps.get_model('courses', 'Course')
    for course in Course.objects.all():
        if hasattr(course, 'universite_fk_id') and course.universite_fk_id:
            course.universites.add(course.universite_fk_id)
        if hasattr(course, 'filiere_fk_id') and course.filiere_fk_id:
            course.filieres.add(course.filiere_fk_id)
        if hasattr(course, 'promotion_fk_id') and course.promotion_fk_id:
            course.promotions.add(course.promotion_fk_id)


def noop(apps, schema_editor):
    pass


class Migration(migrations.Migration):
    dependencies = [
        ('courses', '0015_merge_20260523_2104'),
    ]

    operations = [
        # Ajouter les relations M2M
        migrations.AddField(
            model_name='course',
            name='universites',
            field=models.ManyToManyField(blank=True, related_name='courses', to='courses.universite'),
        ),
        migrations.AddField(
            model_name='course',
            name='filieres',
            field=models.ManyToManyField(blank=True, related_name='courses', to='courses.filiere'),
        ),
        migrations.AddField(
            model_name='course',
            name='promotions',
            field=models.ManyToManyField(blank=True, related_name='courses', to='courses.promotion'),
        ),
        # Copier les données
        migrations.RunPython(migrate_fk_to_m2m, noop),
        # Supprimer les anciens FK
        migrations.RemoveField(
            model_name='course',
            name='universite_fk',
        ),
        migrations.RemoveField(
            model_name='course',
            name='filiere_fk',
        ),
        migrations.RemoveField(
            model_name='course',
            name='promotion_fk',
        ),
    ]
