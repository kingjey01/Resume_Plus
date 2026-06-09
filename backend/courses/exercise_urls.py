"""
URLs pour les exercices QCM
"""
from django.urls import path
from . import exercise_views

urlpatterns = [
    # Exercices
    path('summaries/<int:summary_id>/generate-exercise/', exercise_views.generate_exercise_view, name='generate-exercise'),
    path('exercises/<int:exercise_id>/', exercise_views.get_exercise_view, name='get-exercise'),
    path('exercises/<int:exercise_id>/submit/', exercise_views.submit_exercise_view, name='submit-exercise'),
    path('exercises/attempts/', exercise_views.get_exercise_attempts_view, name='exercise-attempts'),
    path('exercises/attempts/<int:attempt_id>/result/', exercise_views.get_attempt_result_view, name='attempt-result'),
    path('exercises/subscription/check/', exercise_views.check_exercise_subscription_view, name='check-exercise-subscription'),
]
