# Résumé+ Clean 🚀

Application mobile intelligente de génération et d'écoute de résumés de cours audio, conçue avec une **architecture Clean** en Flutter et un puissant backend Django.

---

## 🛠️ Dernières Corrections Majeures

### 1. Synthèse Vocale (Text-to-Speech)
- **Lecture complète des résumés longs** : Correction de la gestion des morceaux (chunking). Le passage d'un morceau à l'autre se fait séquentiellement via les callbacks natifs de complétion pour éviter toute perte de position.
- **Vitesse constante** : Résolution du problème d'accélération vocale après une action Pause/Reprise. Les paramètres de vitesse (`speechRate`), pitch, et volume sont configurés une seule fois au début de la lecture et sont conservés à la reprise.

### 2. Badge de Validation (Interface CP)
- **Comptage correct** : Correction du badge "Validation" dans la barre de navigation du CP (Chargé de Promotion). L'application appelle désormais l'API `/summaries/validation/` au lieu de `/summaries/` pour récupérer également les résumés non validés et n'incrémente le badge que pour ceux créés après la dernière consultation.

### 3. Sécurité des Notifications de Paiement & Abonnement
- **Notifications 100% individuelles** : Résolution d'un bug majeur de ciblage. Les notifications d'activation d'abonnement, d'expiration proche, et d'expiration ne font plus l'objet d'un broadcast à toute la promotion. Elles sont créées et envoyées **strictement et individuellement** à l'utilisateur effectuant l'action.

---

## 🏗️ Architecture du Projet

Le projet est divisé en deux parties principales :

### 📱 Frontend (Flutter)
- **State Management** : Riverpod (lecture réactive des états, gestion des badges et du profil).
- **Service TTS** : `@f:\resume_plus_clean\lib\services\audio_service.dart` gère de manière robuste la synthèse vocale sur Mobile (via `flutter_tts`) et Web (via `WebAudioService`).
- **Navigation** : `@f:\resume_plus_clean\lib\features\app\screens\main_navigation_screen.dart` gère la mise à jour réactive des badges et la réinitialisation par date de consultation.

### ⚙️ Backend (Django REST Framework + Celery)
- **Tâches Asynchrones** : Celery gère la transcription des audios et la génération des résumés via l'API DeepSeek LLM.
- **Signaux de Paiement** : `@f:\resume_plus_clean\backend\payments\signals.py` détecte l'activation ou l'expiration des abonnements pour lancer les tâches de notification.
- **Logique de Notifications** : `@f:\resume_plus_clean\backend\notifications\tasks.py` assure la création des notifications en base et l'envoi push via Firebase Cloud Messaging (FCM).

---

## 🚀 Guide de Déploiement & Commandes Git

Suivez ce workflow Git rigoureux pour pousser vos modifications en toute sécurité :

### 1. Analyse locale & Validation
Avant de commiter, assurez-vous que tout compile et fonctionne correctement :

```powershell
# Vérifier la compilation et l'analyse statique Flutter
flutter analyze

# Lancer les tests unitaires du backend Django (important pour valider la logique des notifications)
python backend/manage.py test notifications
```

### 2. Procédure Git professionnelle

Exécutez les commandes suivantes dans votre terminal :

```powershell
# 1. Vérifier l'état des fichiers modifiés
git status

# 2. Ajouter les modifications à l'index (grâce à notre .gitignore propre, aucun fichier inutile ne sera ajouté)
git add .

# 3. Effectuer le commit avec un message professionnel et explicite
git commit -m "fix(tts,badge,notifications): resolve long summaries tts resuming, fix cp validation badge counting, secure subscription notifications to be individual only"

# 4. Pousser les modifications vers la branche distante (ex: main ou master)
git push origin main
```

