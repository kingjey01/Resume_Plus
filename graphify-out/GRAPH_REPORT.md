# 📊 Graph Analysis Report

**Root:** `.`

## Summary

| Metric | Value |
|--------|-------|
| Nodes | 2936 |
| Edges | 3326 |
| Communities | 355 |
| Hyperedges | 0 |

### Confidence Breakdown

| Level | Count | Percentage |
|-------|-------|------------|
| EXTRACTED | 2608 | 78.4% |
| INFERRED | 718 | 21.6% |
| AMBIGUOUS | 0 | 0.0% |

## 🌟 God Nodes (Most Connected)

| Node | Degree | Community |
|------|--------|-----------|
| views | 0 | – |
| views | 0 | – |
| Destroy() | 0 | – |
| Create() | 0 | – |
| MessageHandler() | 0 | – |
| WindowClassRegistrar | 0 | – |
| GetClientArea() | 0 | – |
| UpdateTheme() | 0 | – |
| WndProc() | 0 | – |
| Win32Window() | 0 | – |

## 🔮 Surprising Connections

- **backend_seed_database_py_main** → **backend_seed_database_py_display_statistics** (calls)
- **backend_seed_database_py_main** → **backend_seed_database_py_display_accounts** (calls)
- **backend_seed_database_py_main** → **backend_seed_database_py_print_header** (calls)
- **backend_check_db_services_py** → **backend_check_db_services_py_check_database_tables** (defines)
- **backend_check_db_services_py** → **backend_check_db_services_py_check_tokens** (defines)

## 🏘️ Communities

### Community 0 — views (113 nodes, cohesion: 0.02)

- views
- AbonnementDetailView
- .get_queryset()
- AbonnementListCreateView
- .get_queryset()
- .get_serializer_class()
- auto_process_pending_sessions()
- batch_process_audio_sessions()
- cleanup_old_audio_files()
- CourseCreateView
- .get_queryset()
- .perform_create()
- CourseDetailView
- .get_queryset()
- CourseListCreateView
- .get_queryset()
- .perform_create()
- create_dispense_view()
- create_professeur_simple_view()
- delete_dispense_view()
- _…and 93 more_

### Community 1 — views (45 nodes, cohesion: 0.04)

- views
- change_password_view()
- complete_profile_view()
- delete_account_view()
- forgot_password_view()
- courses.permissions.CanAssignRole
- django.conf.settings
- django.contrib.auth.models.User
- django.contrib.auth.tokens.default_token_generator
- django.core.mail.send_mail
- django.template.loader.render_to_string
- django.utils.encoding.force_bytes
- django.utils.encoding.force_str
- django.utils.http.urlsafe_base64_decode
- django.utils.http.urlsafe_base64_encode
- django.utils.timezone
- logging
- .models.UserProfile
- rest_framework.decorators.api_view
- rest_framework.decorators.permission_classes
- _…and 25 more_

### Community 2 — views (44 nodes, cohesion: 0.05)

- views
- AbonnementDetailView
- .get_queryset()
- AbonnementListCreateView
- .get_queryset()
- .list()
- .perform_create()
- check_purchase_status()
- check_subscription_status()
- complete_purchase()
- courses.models.Summary
- datetime.timedelta
- django_filters.rest_framework.DjangoFilterBackend
- django.utils.timezone
- .models.Abonnement
- .models.Purchase
- .models.Service
- rest_framework.decorators.api_view
- rest_framework.decorators.permission_classes
- rest_framework.filters.OrderingFilter
- _…and 24 more_

### Community 3 — models (39 nodes, cohesion: 0.05)

- models
- Abonnement
- .is_active()
- .__str__()
- Course
- .is_accessible_by_user()
- .__str__()
- Dispense
- .__str__()
- Exercise
- .questions_count()
- .__str__()
- ExerciseAttempt
- .calculate_score()
- .__str__()
- ExerciseQuestion
- .__str__()
- Filiere
- .__str__()
- django.contrib.auth.models.User
- _…and 19 more_

### Community 4 — serializers (37 nodes, cohesion: 0.05)

- serializers
- AbonnementSerializer
- .create()
- CourseSerializer
- .get_filiere_nom()
- .get_promotion_nom()
- .get_universite_nom()
- FiliereSerializer
- FiliereWithUniversiteSerializer
- .get_universites()
- .models.Abonnement
- .models.Course
- .models.Filiere
- .models.Professeur
- .models.Promotion
- .models.Service
- .models.Session
- .models.Summary
- .models.Transcription
- .models.Universite
- _…and 17 more_

### Community 5 — seed_data (30 nodes, cohesion: 0.09)

- seed_data
- clear_data()
- create_courses()
- create_filieres()
- create_promotions()
- create_services()
- create_sessions()
- create_summaries()
- create_universites()
- create_users()
- courses.models.Course
- courses.models.Filiere
- courses.models.FilierePromotion
- courses.models.Promotion
- courses.models.Service
- courses.models.Session
- courses.models.Summary
- courses.models.Universite
- courses.models.UniversiteFiliere
- datetime.timedelta
- _…and 10 more_

### Community 6 — flexpay_integration (29 nodes, cohesion: 0.08)

- flexpay_integration
- create_subscription_after_payment()
- flexpay_callback()
- get_random_string()
- courses.models.Summary
- datetime.timedelta
- django.conf.settings
- django.http.JsonResponse
- django.utils.timezone
- django.views.decorators.csrf.csrf_exempt
- django.views.decorators.http.require_POST
- json
- .models.Abonnement
- .models.Purchase
- .models.Service
- random
- requests
- rest_framework.decorators.api_view
- rest_framework.decorators.permission_classes
- rest_framework.generics
- _…and 9 more_

### Community 7 — exercise_views (26 nodes, cohesion: 0.08)

- exercise_views
- check_exercise_subscription_view()
- generate_exercise_view()
- get_attempt_result_view()
- get_exercise_attempts_view()
- get_exercise_view()
- has_exercise_subscription()
- django.contrib.auth.models.User
- django.shortcuts.get_object_or_404
- django.utils.timezone
- .exercise_generator.generate_exercises_for_summary
- logging
- .models.Exercise
- .models.ExerciseAttempt
- .models.ExerciseQuestion
- .models.Summary
- payments.models.Abonnement
- payments.models.Service
- .permissions.HasActiveSubscription
- rest_framework.decorators.api_view
- _…and 6 more_

### Community 8 — main (25 nodes, cohesion: 0.09)

- main
- package:firebase_core/firebase_core.dart
- package:flutter/foundation.dart'
- package:flutter_localizations/flutter_localizations.dart
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:flutter/services.dart
- package:intl/date_symbol_data_local.dart
- package:intl/intl.dart
- package:resume_plus_clean/features/app/screens/main_navigation_screen.dart
- package:resume_plus_clean/features/auth/screens/phone_login_screen.dart
- package:resume_plus_clean/features/auth/screens/profile_completion_screen.dart
- package:resume_plus_clean/features/settings/providers/theme_provider.dart
- package:resume_plus_clean/features/splash/screens/splash_screen.dart
- package:resume_plus_clean/pages/debug_page.dart
- package:resume_plus_clean/pages/enhanced_auth_demo_page.dart
- package:resume_plus_clean/pages/simple_data_page.dart
- package:resume_plus_clean/pages/simple_login_page.dart
- package:resume_plus_clean/services/fcm_service.dart
- package:resume_plus_clean/services/screen_security_service.dart
- _…and 5 more_

### Community 9 — win32_window (24 nodes, cohesion: 1.38)

- win32_window
- Create()
- Destroy()
- GetClientArea()
- GetHandle()
- GetThisFromHandle()
- GetWindowClass()
- dwmapi.h
- flutter_windows.h
- resource.h
- win32_window.h
- MessageHandler()
- OnCreate()
- OnDestroy()
- SetChildContent()
- SetQuitOnClose()
- Show()
- UnregisterWindowClass()
- UpdateTheme()
- Win32Window()
- _…and 4 more_

### Community 10 — tests (24 nodes, cohesion: 0.08)

- tests
- CourseModelTest
- .test_course_creation()
- FilierePromotionTest
- .setUp()
- .test_relation_filiere_promotion_creation()
- django.contrib.auth.models.User
- django.test.Client
- django.test.TestCase
- django.urls.reverse
- .models.Course
- .models.Filiere
- .models.FilierePromotion
- .models.Promotion
- .models.Session
- .models.Summary
- .models.Universite
- .models.UniversiteFiliere
- rest_framework.authtoken.models.Token
- rest_framework.status
- _…and 4 more_

### Community 11 — views (22 nodes, cohesion: 0.09)

- views
- create_manual_notification()
- django.db.models.Q
- django.utils.timezone
- logging
- .models.AppNotification
- .models.UserDevice
- .models.UserNotification
- rest_framework.decorators.api_view
- rest_framework.decorators.permission_classes
- rest_framework.permissions
- rest_framework.response.Response
- rest_framework.status
- .serializers.UserDeviceSerializer
- .serializers.UserNotificationSerializer
- list_notifications()
- mark_all_read()
- mark_read()
- notification_detail()
- register_device()
- _…and 2 more_

### Community 12 — seed_database (22 nodes, cohesion: 0.10)

- seed_database
- display_accounts()
- display_statistics()
- courses.models.Abonnement
- courses.models.Course
- courses.models.Filiere
- courses.models.FilierePromotion
- courses.models.Promotion
- courses.models.Service
- courses.models.Session
- courses.models.Summary
- courses.models.Universite
- courses.models.UniversiteFiliere
- datetime.timedelta
- decimal.Decimal
- django
- django.contrib.auth.models.User
- django.utils.timezone
- os
- sys
- _…and 2 more_

### Community 13 — summary_details_screen (21 nodes, cohesion: 0.10)

- summary_details_screen
- dart:io
- dart:math
- package:dio/dio.dart
- package:flutter/foundation.dart
- package:flutter/material.dart
- package:flutter/services.dart
- package:intl/intl.dart
- package:resume_plus_clean/features/exercises/screens/exercise_quiz_screen.dart
- package:resume_plus_clean/features/exercises/screens/exercise_subscription_screen.dart
- package:resume_plus_clean/features/purchases/screens/payment_status_screen.dart
- package:resume_plus_clean/mixins/error_handler_mixin.dart
- package:resume_plus_clean/models/summary.dart'
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/storage_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- package:resume_plus_clean/widgets/ai_content_view.dart
- package:resume_plus_clean/widgets/api_error_view.dart
- package:resume_plus_clean/widgets/audio_player_widget.dart
- package:resume_plus_clean/widgets/secure_screen_wrapper.dart
- _…and 1 more_

### Community 14 — serializers (21 nodes, cohesion: 0.10)

- serializers
- courses.models.Filiere
- courses.models.Promotion
- courses.models.Universite
- django.contrib.auth.authenticate
- django.contrib.auth.models.User
- .models.UserProfile
- rest_framework.serializers
- rest_framework_simplejwt.exceptions.TokenError
- rest_framework_simplejwt.serializers.TokenRefreshSerializer
- rest_framework_simplejwt.tokens.RefreshToken
- LoginSerializer
- .validate()
- Meta
- RefreshTokenSerializer
- .validate()
- RegisterSerializer
- .create()
- .validate()
- UserProfileSerializer
- _…and 1 more_

### Community 15 — create_test_data (21 nodes, cohesion: 0.10)

- create_test_data
- config()
- create_test_data()
- courses.models.Course
- courses.models.Filiere
- courses.models.Promotion
- courses.models.Session
- courses.models.Summary
- courses.models.Universite
- datetime.timedelta
- decouple.config
- django
- django.conf
- django.contrib.auth.models.User
- django.db.transaction
- os
- pathlib.Path
- pymysql
- random
- sys
- _…and 1 more_

### Community 16 — create_production_test_data (20 nodes, cohesion: 0.13)

- create_production_test_data
- create_ai_summary_for_session()
- create_melodic_wav_file()
- create_production_audio_files()
- create_production_test_page()
- courses.models.Course
- courses.models.Session
- courses.models.Summary
- django
- django.contrib.auth.models.User
- django.core.files.base.ContentFile
- django.utils.timezone
- math
- os
- pathlib.Path
- struct
- sys
- wave
- main()
- verify_production_setup()

### Community 17 — home_screen (20 nodes, cohesion: 0.10)

- home_screen
- _HomeScreenState()
- dart:async
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/auth/providers/auth_provider.dart
- package:resume_plus_clean/features/auth/screens/profile_completion_screen.dart
- package:resume_plus_clean/features/home/providers/summary_provider.dart
- package:resume_plus_clean/features/home/widgets/course_tile.dart
- package:resume_plus_clean/features/home/widgets/summary_card.dart
- package:resume_plus_clean/features/notifications/providers/notification_provider.dart
- package:resume_plus_clean/features/notifications/screens/notifications_screen.dart
- package:resume_plus_clean/features/settings/screens/settings_screen.dart
- package:resume_plus_clean/features/upload/screens/audio_sessions_screen.dart
- package:resume_plus_clean/features/upload/screens/upload_choice_screen.dart
- package:resume_plus_clean/models/user.dart
- package:resume_plus_clean/providers/tab_refresh_provider.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/notification_service.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 18 — test_payment_notifications (20 nodes, cohesion: 0.10)

- test_payment_notifications
- courses.models.Course
- courses.models.Filiere
- courses.models.Promotion
- courses.models.Summary
- courses.models.Universite
- datetime.timedelta
- decimal.Decimal
- django.contrib.auth.models.User
- django.test.TestCase
- django.utils.timezone
- notifications.models.AppNotification
- notifications.models.UserNotification
- notifications.tasks.notify_subscription_expired
- notifications.tasks.notify_subscription_expiring_soon
- notifications.tasks.notify_subscription_paid
- notifications.tasks.notify_summary_purchased
- payments.models.Abonnement
- payments.models.Purchase
- payments.models.Service

### Community 19 — permissions (20 nodes, cohesion: 0.10)

- permissions
- CanAccessSummary
- .has_object_permission()
- .has_permission()
- CanAssignRole
- .has_permission()
- CanCreateSummary
- .has_permission()
- CanModifyObject
- .has_object_permission()
- HasActiveSubscription
- .has_permission()
- HasUniversityAccess
- .has_object_permission()
- .has_permission()
- rest_framework.permissions
- IsAdminOrReadOnly
- .has_permission()
- IsOwnerOrReadOnly
- .has_object_permission()

### Community 20 — test_notifications_simple (19 nodes, cohesion: 0.11)

- test_notifications_simple
- courses.models.Course
- courses.models.Filiere
- courses.models.Promotion
- courses.models.Summary
- courses.models.Universite
- datetime.timedelta
- decimal.Decimal
- django
- django.contrib.auth.models.User
- django.utils.timezone
- notifications.models.AppNotification
- notifications.models.UserNotification
- os
- payments.models.Abonnement
- payments.models.Purchase
- payments.models.Service
- sys
- time

### Community 21 — demo_audio_complete (19 nodes, cohesion: 0.13)

- demo_audio_complete
- create_demo_sessions_with_audio()
- create_demo_summaries()
- create_html_audio_test()
- create_real_wav_file()
- courses.models.Course
- courses.models.Session
- courses.models.Summary
- django
- django.contrib.auth.models.User
- django.core.files.base.ContentFile
- math
- os
- pathlib.Path
- struct
- sys
- wave
- main()
- test_audio_files_locally()

### Community 22 — fix_auth_issues (18 nodes, cohesion: 0.15)

- fix_auth_issues
- check_cors_configuration()
- config()
- create_missing_tokens()
- fix_test_users()
- generate_flutter_auth_config()
- decouple.config
- django
- django.conf
- django.contrib.auth.models.User
- os
- pathlib.Path
- pymysql
- rest_framework.authtoken.models.Token
- sys
- users.models.UserProfile
- main()
- test_tokens_validity()

### Community 23 — admin (18 nodes, cohesion: 0.11)

- admin
- CourseAdmin
- .get_filieres()
- .get_promotions()
- .get_universites()
- ExerciseAttemptAdmin
- .get_queryset()
- ExerciseQuestionAdmin
- .get_queryset()
- .question_text_short()
- FiliereAdmin
- django.contrib.admin
- .models
- PromotionAdmin
- SessionAdmin
- SummaryAdmin
- .get_queryset()
- UniversiteAdmin

### Community 24 — record_audio_screen (18 nodes, cohesion: 0.11)

- record_audio_screen
- dart:async
- dart:io
- dart:typed_data
- package:audioplayers/audioplayers.dart
- package:dio/dio.dart
- package:file_picker/file_picker.dart
- package:flutter/foundation.dart
- package:flutter/material.dart
- package:resume_plus_clean/features/upload/screens/course_selection_screen.dart
- package:resume_plus_clean/models/course.dart
- package:resume_plus_clean/models/professeur.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/snackbar_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- ../../../services/mobile_audio_recorder.dart
- _RecordAudioScreenState()
- RecordingState

### Community 25 — main_navigation_screen (18 nodes, cohesion: 0.11)

- main_navigation_screen
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/exercises/screens/exercises_screen.dart
- package:resume_plus_clean/features/home/providers/summary_provider.dart
- package:resume_plus_clean/features/home/screens/home_screen.dart
- package:resume_plus_clean/features/onboarding/cp_onboarding_flow.dart
- package:resume_plus_clean/features/purchases/screens/purchases_screen.dart
- package:resume_plus_clean/features/summaries/providers/purchased_summaries_provider.dart
- package:resume_plus_clean/features/summaries/screens/all_summaries_screen.dart
- package:resume_plus_clean/features/validation/screens/validation_screen.dart
- package:resume_plus_clean/providers/purchase_badge_provider.dart
- package:resume_plus_clean/providers/tab_refresh_provider.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/notification_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- package:resume_plus_clean/widgets/badge_icon.dart
- _MainNavigationScreenState()

### Community 26 — run_seed (17 nodes, cohesion: 0.12)

- run_seed
- config()
- create_test_data()
- courses.models.Course
- courses.models.Filiere
- courses.models.Promotion
- courses.models.Universite
- decouple.config
- django
- django.conf
- django.contrib.auth.models.User
- django.db.transaction
- os
- pathlib.Path
- pymysql
- sys
- users.models.UserProfile

### Community 27 — GeneratedPluginRegistrant (17 nodes, cohesion: 0.12)

- GeneratedPluginRegistrant
- audioplayers_darwin
- file_picker
- file_selector_macos
- firebase_core
- firebase_messaging
- flutter_local_notifications
- flutter_secure_storage_macos
- flutter_tts
- FlutterMacOS
- Foundation
- path_provider_foundation
- record_darwin
- shared_preferences_foundation
- sqflite_darwin
- url_launcher_macos
- RegisterGeneratedPlugins

### Community 28 — settings_screen (17 nodes, cohesion: 0.12)

- settings_screen
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/auth/providers/auth_provider.dart
- package:resume_plus_clean/features/settings/providers/theme_provider.dart
- package:resume_plus_clean/features/settings/screens/about_screen.dart
- package:resume_plus_clean/features/settings/screens/delete_account_screen.dart
- package:resume_plus_clean/features/settings/screens/privacy_policy_screen.dart
- package:resume_plus_clean/features/settings/screens/terms_of_service_screen.dart
- package:resume_plus_clean/features/settings/widgets/profile_section.dart
- package:resume_plus_clean/features/settings/widgets/theme_selector.dart
- package:resume_plus_clean/features/splash/screens/splash_screen.dart
- package:resume_plus_clean/features/subscriptions/screens/subscriptions_screen.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/snackbar_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- package:url_launcher/url_launcher.dart

### Community 29 — seed_production (17 nodes, cohesion: 0.12)

- seed_production
- courses.models.Course
- courses.models.Filiere
- courses.models.FilierePromotion
- courses.models.Professeur
- courses.models.Promotion
- courses.models.Session
- courses.models.Summary
- courses.models.Universite
- courses.models.UniversiteFiliere
- datetime.timedelta
- decimal.Decimal
- django.contrib.auth.models.User
- django.core.management.base.BaseCommand
- payments.models.Service
- random
- users.models.UserProfile

### Community 30 — test_new_features (17 nodes, cohesion: 0.12)

- test_new_features
- courses.exercise_generator.generate_exercises_for_summary
- courses.models.Abonnement
- courses.models.Course
- courses.models.Exercise
- courses.models.ExerciseQuestion
- courses.models.Service
- courses.models.Summary
- datetime.timedelta
- django
- django.contrib.auth.models.User
- django.utils.timezone
- json
- os
- requests
- sys
- users.models.UserProfile

### Community 31 — views (16 nodes, cohesion: 0.13)

- views
- django_filters.rest_framework.DjangoFilterBackend
- .models.SecurityLog
- rest_framework.decorators.api_view
- rest_framework.decorators.permission_classes
- rest_framework.filters.OrderingFilter
- rest_framework.generics
- rest_framework.permissions
- rest_framework.response.Response
- rest_framework.status
- .serializers.CreateSecurityLogSerializer
- .serializers.SecurityLogSerializer
- log_security_event()
- SecurityLogListCreateView
- .get_queryset()
- .get_serializer_class()

### Community 32 — tasks (16 nodes, cohesion: 0.14)

- tasks
- cleanup_inactive_tokens()
- create_and_send_notification()
- _get_fcm_app()
- celery.shared_task
- django.conf.settings
- logging
- _is_invalid_token_error()
- notify_subscription_expired()
- notify_subscription_expiring_soon()
- notify_subscription_paid()
- notify_subscription_payment_failed()
- notify_summary_created()
- notify_summary_purchase_failed()
- notify_summary_purchased()
- send_fcm_notification()

### Community 33 — models (15 nodes, cohesion: 0.13)

- models
- Abonnement
- .is_active()
- .save()
- .__str__()
- courses.models.Summary
- datetime.timedelta
- django.contrib.auth.models.User
- django.db.models
- django.utils.timezone
- Meta
- Purchase
- .__str__()
- Service
- .__str__()

### Community 34 — audio_processing (15 nodes, cohesion: 0.13)

- audio_processing
- datetime.timedelta
- .deepgram_service.deepgram_service
- .deepseek_service.deepseek_service
- django.conf.settings
- django.utils.timezone
- json
- logging
- mimetypes
- .models.Course
- .models.Session
- .models.Summary
- .models.Transcription
- os
- re

### Community 35 — create_test_data_mysql (14 nodes, cohesion: 0.14)

- create_test_data_mysql
- create_test_data()
- courses.models.Course
- courses.models.Filiere
- courses.models.Promotion
- courses.models.Universite
- django
- django.conf
- django.contrib.auth.models.User
- django.db.transaction
- os
- pathlib.Path
- sys
- users.models.UserProfile

### Community 36 — serializers (14 nodes, cohesion: 0.14)

- serializers
- AbonnementSerializer
- .get_progress_percentage()
- CreatePurchaseSerializer
- .create()
- courses.models.Summary
- .models.Abonnement
- .models.Purchase
- .models.Service
- rest_framework.serializers
- Meta
- PurchaseSerializer
- .get_purchase_type()
- ServiceSerializer

### Community 37 — models (14 nodes, cohesion: 0.14)

- models
- AppNotification
- .__str__()
- courses.models.Filiere
- courses.models.Promotion
- courses.models.Universite
- django.contrib.auth.models.User
- django.db.models
- logging
- Meta
- UserDevice
- .__str__()
- UserNotification
- .__str__()

### Community 38 — api_service (14 nodes, cohesion: 0.14)

- api_service
- dart:async
- dart:typed_data
- package:dio/dio.dart
- package:flutter/foundation.dart
- package:resume_plus_clean/exceptions/api_exception.dart
- package:resume_plus_clean/models/filiere.dart
- package:resume_plus_clean/models/promotion.dart
- package:resume_plus_clean/models/summary.dart'
- package:resume_plus_clean/models/universite.dart
- package:resume_plus_clean/services/demo_data_service.dart
- package:resume_plus_clean/services/storage_service.dart
- package:resume_plus_clean/utils/logger.dart
- productionUrl()

### Community 39 — my_application (14 nodes, cohesion: 0.93)

- my_application
- flutter/generated_plugin_registrant.h
- flutter_linux/flutter_linux.h
- gdk/gdkx.h
- my_application.h
- my_application_activate()
- my_application_class_init()
- my_application_dispose()
- my_application_init()
- my_application_local_command_line()
- my_application_new()
- my_application_shutdown()
- my_application_startup()
- _MyApplication

### Community 40 — AudioProcessor (14 nodes, cohesion: 0.23)

- AudioProcessor
- .auto_process_pending_sessions()
- .batch_process_sessions()
- .cleanup_old_audio_files()
- ._format_duration()
- ._get_audio_duration()
- .get_audio_info()
- .get_processing_stats()
- .__init__()
- ._is_supported_format()
- .process_audio_session()
- ._simulate_transcription()
- ._step1_transcribe_audio()
- ._step2_generate_summary()

### Community 41 — test_advanced_audio_functionality (13 nodes, cohesion: 0.22)

- test_advanced_audio_functionality
- create_comprehensive_test_report()
- create_test_audio_upload()
- json
- os
- pathlib.Path
- requests
- sys
- wave
- main()
- test_audio_files_existence()
- test_django_setup()
- test_local_server_endpoints()

### Community 42 — mobile_audio_recorder (13 nodes, cohesion: 0.15)

- mobile_audio_recorder
- _currentPath()
- dart:async
- dart:io
- dart:typed_data
- package:flutter/foundation.dart
- package:path_provider/path_provider.dart
- package:permission_handler/permission_handler.dart
- package:record/record.dart
- _instance()
- _isPaused()
- _isRecording()
- _recordingStartTime()

### Community 43 — diagnostic_complet (13 nodes, cohesion: 0.31)

- diagnostic_complet
- generate_report()
- datetime
- json
- jwt
- requests
- main()
- print_section()
- test_1_server_status()
- test_2_login()
- test_3_endpoints_without_auth()
- test_4_auth_endpoints()
- test_5_cors_headers()

### Community 44 — test_direct_api (13 nodes, cohesion: 0.15)

- test_direct_api
- django
- django.contrib.auth.models.User
- os
- payments.models.Abonnement
- payments.models.Service
- payments.views.AbonnementListCreateView
- payments.views.ServiceListCreateView
- rest_framework.response.Response
- rest_framework.test.APIRequestFactory
- rest_framework.test.force_authenticate
- sys
- test_direct_api()

### Community 45 — DeepSeekService (13 nodes, cohesion: 0.37)

- DeepSeekService
- ._build_exercises_prompt()
- ._build_summary_prompt()
- ._call_api()
- ._clean_text()
- .generate_exercises()
- .generate_summary()
- ._get_api_key()
- .__init__()
- .is_configured()
- .reformulate_summary()
- .simplify_summary()
- .translate_summary()

### Community 46 — quick_server_test (13 nodes, cohesion: 0.23)

- quick_server_test
- check_database_users()
- create_tokens_direct_mysql()
- generate_curl_commands()
- generate_token()
- datetime
- pymysql
- requests
- secrets
- string
- main()
- test_server_basic()
- test_tokens_quickly()

### Community 47 — tests (13 nodes, cohesion: 0.15)

- tests
- courses.models.Filiere
- courses.models.Promotion
- courses.models.Universite
- django.contrib.auth.models.User
- django.test.TestCase
- django.urls.reverse
- .models.UserProfile
- rest_framework.status
- rest_framework.test.APITestCase
- UserProfileModelTest
- .setUp()
- .test_user_profile_creation()

### Community 48 — fix_audio_issues (13 nodes, cohesion: 0.17)

- fix_audio_issues
- create_apache_media_config()
- create_audio_test_endpoint()
- create_media_directories()
- create_real_audio_files()
- os
- pathlib.Path
- subprocess
- sys
- main()
- run_diagnostics()
- setup_django()
- update_django_settings()

### Community 49 — Command (12 nodes, cohesion: 0.30)

- Command
- .add_arguments()
- .clear_data()
- .create_courses()
- .create_filieres()
- .create_professeurs()
- .create_promotions()
- .create_sample_summaries()
- .create_services()
- .create_universites()
- .create_users()
- .handle()

### Community 50 — test_consecutive_subscriptions (12 nodes, cohesion: 0.17)

- test_consecutive_subscriptions
- datetime.timedelta
- django
- django.contrib.auth.models.User
- django.utils.timezone
- json
- os
- payments.models.Abonnement
- payments.models.Service
- requests
- sys
- test_consecutive_subscriptions()

### Community 51 — test_api_auth (12 nodes, cohesion: 0.30)

- test_api_auth
- json
- os
- requests
- sys
- main()
- print_header()
- print_section()
- test_authenticated_endpoints()
- test_cors()
- test_login()
- test_server_status()

### Community 52 — otp_verification_screen (12 nodes, cohesion: 0.17)

- otp_verification_screen
- dart:async
- package:dio/dio.dart
- package:flutter/foundation.dart'
- package:flutter/material.dart
- package:flutter/services.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/fcm_service.dart
- package:resume_plus_clean/services/otp_service.dart
- package:resume_plus_clean/services/storage_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- _OtpVerificationScreenState()

### Community 53 — all_summaries_screen (12 nodes, cohesion: 0.17)

- all_summaries_screen
- _AllSummariesScreenState()
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:intl/intl.dart
- package:resume_plus_clean/features/home/providers/summary_provider.dart
- package:resume_plus_clean/features/home/widgets/summary_card.dart
- package:resume_plus_clean/features/summaries/providers/purchased_summaries_provider.dart
- package:resume_plus_clean/features/summaries/widgets/purchased_summary_card.dart
- package:resume_plus_clean/providers/tab_refresh_provider.dart
- package:resume_plus_clean/theme/app_theme.dart
- package:resume_plus_clean/widgets/api_error_view.dart

### Community 54 — test_audio_upload (12 nodes, cohesion: 0.23)

- test_audio_upload
- create_fake_audio_file()
- io
- json
- random
- requests
- struct
- wave
- main()
- test_audio_upload()
- test_get_courses()
- test_get_sessions()

### Community 55 — debug_services_issue (12 nodes, cohesion: 0.17)

- debug_services_issue
- debug_services_issue()
- django
- django.contrib.auth.models.User
- os
- payments.models.Abonnement
- payments.models.Service
- payments.views.AbonnementListCreateView
- payments.views.ServiceListCreateView
- rest_framework_simplejwt.tokens.RefreshToken
- rest_framework.test.APIRequestFactory
- sys

### Community 56 — debug_audio_issues (12 nodes, cohesion: 0.24)

- debug_audio_issues
- check_database_audio_files()
- check_media_directory()
- create_test_audio_files()
- os
- pathlib.Path
- pymysql
- requests
- sys
- main()
- test_api_endpoints()
- test_specific_audio_file()

### Community 57 — ExerciseAdmin (12 nodes, cohesion: 0.17)

- ExerciseAdmin
- .get_queryset()
- ProfesseurAdmin
- .get_queryset()
- .list_filieres()
- ProfesseurFilieresAdmin
- .get_queryset()
- .has_add_permission()
- .has_change_permission()
- .has_delete_permission()
- TranscriptionAdmin
- .get_queryset()

### Community 58 — seed_production (12 nodes, cohesion: 0.17)

- seed_production
- courses.models.Filiere
- courses.models.FilierePromotion
- courses.models.Promotion
- courses.models.Universite
- courses.models.UniversiteFiliere
- decimal.Decimal
- django
- django.contrib.auth.models.User
- os
- payments.models.Service
- sys

### Community 59 — create_test_data_postgresql (12 nodes, cohesion: 0.17)

- create_test_data_postgresql
- create_test_data()
- courses.models.Course
- courses.models.Filiere
- courses.models.Promotion
- courses.models.Universite
- django
- django.contrib.auth.models.User
- django.db.transaction
- os
- sys
- users.models.UserProfile

### Community 60 — validation_screen (12 nodes, cohesion: 0.17)

- validation_screen
- dart:async
- package:dio/dio.dart
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/validation/screens/edit_summary_screen.dart
- package:resume_plus_clean/mixins/error_handler_mixin.dart
- package:resume_plus_clean/providers/tab_refresh_provider.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- package:resume_plus_clean/widgets/api_error_view.dart
- _ValidationScreenState()

### Community 61 — check_permissions_detailed (12 nodes, cohesion: 0.21)

- check_permissions_detailed
- check_file_permissions()
- check_write_permission()
- get_current_user_info()
- django
- django.conf.settings
- grp
- os
- pwd
- stat
- sys
- main()

### Community 62 — test_file_permissions (11 nodes, cohesion: 0.24)

- test_file_permissions
- check_wsgi_user()
- django
- django.conf.settings
- django.core.files.base.ContentFile
- django.core.files.storage.default_storage
- os
- sys
- main()
- test_django_file_upload()
- test_media_permissions()

### Community 63 — UserProfile (11 nodes, cohesion: 0.18)

- UserProfile
- .can_create_summary()
- .generate_otp()
- .has_active_subscription()
- .has_free_access()
- .is_admin()
- .is_cp()
- .is_etudiant()
- .reset_otp()
- .__str__()
- .verify_otp()

### Community 64 — subscriptions_screen (11 nodes, cohesion: 0.18)

- subscriptions_screen
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/subscriptions/providers/service_provider.dart
- package:resume_plus_clean/features/subscriptions/providers/subscription_provider.dart
- package:resume_plus_clean/features/subscriptions/widgets/service_card.dart
- package:resume_plus_clean/features/subscriptions/widgets/subscription_card.dart
- package:resume_plus_clean/models/abonnement.dart
- package:resume_plus_clean/models/service.dart
- package:resume_plus_clean/theme/app_theme.dart
- _SubscriptionsScreenState()

### Community 65 — fcm_service (11 nodes, cohesion: 0.18)

- fcm_service
- _currentToken()
- _firebaseBackgroundHandler()
- dart:io
- package:firebase_messaging/firebase_messaging.dart
- package:flutter/foundation.dart
- package:flutter_local_notifications/flutter_local_notifications.dart
- package:flutter/material.dart'
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/notification_service.dart
- _instance()

### Community 66 — generated_plugin_registrant (11 nodes, cohesion: 0.18)

- generated_plugin_registrant
- audioplayers_windows/audioplayers_windows_plugin.h
- file_selector_windows/file_selector_windows.h
- firebase_core/firebase_core_plugin_c_api.h
- flutter_secure_storage_windows/flutter_secure_storage_windows_plugin.h
- flutter_tts/flutter_tts_plugin.h
- generated_plugin_registrant.h
- permission_handler_windows/permission_handler_windows_plugin.h
- record_windows/record_windows_plugin_c_api.h
- url_launcher_windows/url_launcher_windows.h
- RegisterPlugins()

### Community 67 — create_test_user_fixed (11 nodes, cohesion: 0.18)

- create_test_user_fixed
- create_admin_user()
- create_cp_user()
- create_test_user()
- django
- django.contrib.auth.models.User
- os
- rest_framework.authtoken.models.Token
- sys
- traceback
- users.models.UserProfile

### Community 68 — login_screen (11 nodes, cohesion: 0.18)

- login_screen
- package:dio/dio.dart
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/app/screens/main_navigation_screen.dart
- package:resume_plus_clean/features/auth/providers/auth_provider.dart
- package:resume_plus_clean/features/auth/screens/forgot_password_screen.dart
- package:resume_plus_clean/features/auth/screens/register_screen.dart
- package:resume_plus_clean/mixins/error_handler_mixin.dart
- package:resume_plus_clean/theme/app_theme.dart
- _LoginScreenState()

### Community 69 — register_screen (10 nodes, cohesion: 0.20)

- register_screen
- ../../../models/filiere.dart
- ../../../models/promotion.dart
- ../../../models/universite.dart
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/theme/app_theme.dart
- ../../../services/api_service.dart
- ../../../widgets/linked_dropdowns.dart
- _RegisterScreenState()

### Community 70 — debug_api_response (10 nodes, cohesion: 0.20)

- debug_api_response
- django
- django.contrib.auth.models.User
- os
- payments.models.Abonnement
- payments.models.Service
- payments.serializers.AbonnementSerializer
- payments.serializers.ServiceSerializer
- sys
- test_api_responses()

### Community 71 — signals (10 nodes, cohesion: 0.20)

- signals
- datetime.timedelta
- django.db.models.signals.post_save
- django.dispatch.receiver
- django.utils.timezone
- logging
- .models.Abonnement
- .models.Purchase
- on_abonnement_created_or_updated()
- on_purchase_completed()

### Community 72 — utils (10 nodes, cohesion: 0.36)

- utils
- CreateAndAttachConsole()
- GetCommandLineArguments()
- flutter_windows.h
- io.h
- iostream
- stdio.h
- utils.h
- windows.h
- Utf8FromUtf16()

### Community 73 — create_test_services (10 nodes, cohesion: 0.20)

- create_test_services
- create_test_services()
- datetime.timedelta
- django
- django.contrib.auth.models.User
- django.utils.timezone
- os
- payments.models.Abonnement
- payments.models.Service
- sys

### Community 74 — exercises_screen (10 nodes, cohesion: 0.20)

- exercises_screen
- _ExercisesScreenState()
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/exercises/screens/exercise_result_screen.dart
- package:resume_plus_clean/features/exercises/screens/exercise_subscription_screen.dart
- package:resume_plus_clean/models/exercise.dart
- package:resume_plus_clean/providers/tab_refresh_provider.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 75 — test_mobile_simulation (10 nodes, cohesion: 0.36)

- test_mobile_simulation
- json
- requests
- time
- login_user()
- main()
- print_header()
- print_step()
- test_summaries()
- test_user_info()

### Community 76 — test_notification_logic (10 nodes, cohesion: 0.20)

- test_notification_logic
- courses.models.Filiere
- courses.models.Promotion
- courses.models.Universite
- django.contrib.auth.models.User
- django.test.TestCase
- notifications.models.AppNotification
- notifications.models.UserNotification
- notifications.tasks.create_and_send_notification
- users.models.UserProfile

### Community 77 — create_test_user (10 nodes, cohesion: 0.20)

- create_test_user
- create_admin_user()
- create_test_user()
- django
- django.contrib.auth.models.User
- os
- rest_framework.authtoken.models.Token
- sys
- traceback
- users.models.UserProfile

### Community 78 — fix_encoding_utf8_complete (10 nodes, cohesion: 0.27)

- fix_encoding_utf8_complete
- clean_invalid_utf8_data()
- fix_database_encoding()
- django
- django.conf.settings
- django.db.connection
- os
- sys
- main()
- test_emoji_insertion()

### Community 79 — test_production_audio (10 nodes, cohesion: 0.29)

- test_production_audio
- generate_production_test_report()
- datetime
- json
- requests
- time
- main()
- test_media_directory_access()
- test_production_endpoints()
- test_specific_audio_sessions()

### Community 80 — create_courses() (10 nodes, cohesion: 0.36)

- create_courses()
- create_filieres()
- create_promotions()
- create_relations()
- create_services()
- create_sessions_and_summaries()
- create_universites()
- create_users()
- main()
- print_section()

### Community 81 — test_url_routing (10 nodes, cohesion: 0.20)

- test_url_routing
- django
- django.contrib.auth.models.User
- django.test.Client
- django.urls.resolve
- django.urls.reverse
- os
- rest_framework_simplejwt.tokens.RefreshToken
- sys
- test_url_routing()

### Community 82 — create_test_courses (10 nodes, cohesion: 0.20)

- create_test_courses
- create_test_courses()
- courses.models.Course
- courses.models.Filiere
- courses.models.Promotion
- courses.models.Universite
- django
- django.utils.timezone
- os
- sys

### Community 83 — notifications_screen (10 nodes, cohesion: 0.20)

- notifications_screen
- dart:async
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:intl/intl.dart
- package:resume_plus_clean/features/notifications/providers/notification_provider.dart
- package:resume_plus_clean/features/notifications/screens/notification_detail_screen.dart
- package:resume_plus_clean/models/app_notification.dart
- package:resume_plus_clean/theme/app_theme.dart
- _NotificationsScreenState()

### Community 84 — upload_choice_screen (10 nodes, cohesion: 0.20)

- upload_choice_screen
- package:flutter/foundation.dart
- package:flutter/material.dart
- package:resume_plus_clean/features/upload/screens/associate_prof_cours_screen.dart
- package:resume_plus_clean/features/upload/screens/create_cours_screen.dart
- package:resume_plus_clean/features/upload/screens/create_professeur_screen.dart
- package:resume_plus_clean/features/upload/screens/manual_entry_screen.dart
- package:resume_plus_clean/features/upload/screens/record_audio_screen.dart
- package:resume_plus_clean/features/upload/screens/record_audio_screen_web_safe.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 85 — seeddata (10 nodes, cohesion: 0.20)

- seeddata
- courses.models.Course
- courses.models.Session
- courses.models.Summary
- datetime.timedelta
- django.contrib.auth.models.User
- django.core.management.base.BaseCommand
- payments.models.Purchase
- random
- users.models.UserProfile

### Community 86 — edit_profile_screen (10 nodes, cohesion: 0.20)

- edit_profile_screen
- _EditProfileScreenState()
- dart:io
- package:dio/dio.dart
- package:flutter/foundation.dart'
- package:flutter/material.dart
- package:image_picker/image_picker.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/snackbar_service.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 87 — service_card (10 nodes, cohesion: 0.20)

- service_card
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/purchases/screens/payment_status_screen.dart
- package:resume_plus_clean/features/subscriptions/providers/subscription_provider.dart
- package:resume_plus_clean/models/abonnement.dart
- package:resume_plus_clean/models/payment_method.dart
- package:resume_plus_clean/models/service.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/snackbar_service.dart

### Community 88 — urls (10 nodes, cohesion: 0.20)

- urls
- django.conf.settings
- django.conf.urls.static.static
- django.contrib.admin
- django.urls.include
- django.urls.path
- drf_yasg.openapi
- drf_yasg.views.get_schema_view
- health_check
- rest_framework.permissions

### Community 89 — fix_migration (10 nodes, cohesion: 0.20)

- fix_migration
- clear_user_profiles()
- create_initial_data()
- courses.models.Filiere
- courses.models.Promotion
- courses.models.Universite
- django
- os
- sys
- users.models.UserProfile

### Community 90 — test_registration (10 nodes, cohesion: 0.29)

- test_registration
- generate_random_user()
- json
- random
- requests
- string
- main()
- test_api_with_jwt_token()
- test_login_with_new_user()
- test_registration()

### Community 91 — test_auth_quick (10 nodes, cohesion: 0.31)

- test_auth_quick
- check_server_status()
- generate_curl_commands()
- json
- requests
- time
- main()
- test_auth_endpoints_quick()
- test_cors_headers()
- test_with_hardcoded_tokens()

### Community 92 — delete_account_screen (9 nodes, cohesion: 0.22)

- delete_account_screen
- _DeleteAccountScreenState()
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/auth/providers/auth_provider.dart
- package:resume_plus_clean/features/auth/screens/login_screen.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/snackbar_service.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 93 — simple_auth_test (9 nodes, cohesion: 0.36)

- simple_auth_test
- analyze_error_response()
- json
- requests
- main()
- suggest_solutions()
- test_auth_endpoint_without_token()
- test_server_basic()
- test_token_with_different_methods()

### Community 94 — serializers (9 nodes, cohesion: 0.22)

- serializers
- AppNotificationSerializer
- .models.AppNotification
- .models.UserDevice
- .models.UserNotification
- rest_framework.serializers
- Meta
- UserDeviceSerializer
- UserNotificationSerializer

### Community 95 — debug_auth_headers (9 nodes, cohesion: 0.22)

- debug_auth_headers
- django
- django.test.RequestFactory
- os
- rest_framework.authentication.TokenAuthentication
- rest_framework.authtoken.models.Token
- sys
- test_different_auth_headers()
- test_wsgi_headers()

### Community 96 — test_audio_playback (9 nodes, cohesion: 0.33)

- test_audio_playback
- json
- os
- requests
- main()
- test_audio_file_access()
- test_direct_audio_access()
- test_media_directory_listing()
- test_sessions_endpoint()

### Community 97 — DeepgramService (9 nodes, cohesion: 0.44)

- DeepgramService
- ._extract_confidence()
- ._extract_transcript()
- ._extract_words()
- ._get_mime_type()
- .__init__()
- .is_configured()
- .transcribe_bytes()
- .transcribe_file()

### Community 98 — profile_completion_screen (9 nodes, cohesion: 0.22)

- profile_completion_screen
- package:dio/dio.dart
- package:flutter/foundation.dart
- package:flutter/material.dart
- package:resume_plus_clean/features/app/screens/main_navigation_screen.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/storage_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- _ProfileCompletionScreenState()

### Community 99 — record_audio_screen_web_safe (9 nodes, cohesion: 0.22)

- record_audio_screen_web_safe
- package:flutter/foundation.dart
- package:flutter/material.dart
- package:resume_plus_clean/features/upload/screens/course_selection_screen.dart
- package:resume_plus_clean/models/course.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/snackbar_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- _RecordAudioScreenWebSafeState()

### Community 100 — audio_file_player_service (9 nodes, cohesion: 0.22)

- audio_file_player_service
- _currentUrl()
- _duration()
- package:audioplayers/audioplayers.dart
- package:flutter/foundation.dart
- _instance()
- _isInitialized()
- _isPaused()
- _position()

### Community 101 — test_production_config (9 nodes, cohesion: 0.31)

- test_production_config
- datetime
- json
- jwt
- requests
- main()
- test_cors_preflight()
- test_jwt_validation()
- test_server_logs_simulation()

### Community 102 — payment_status_screen (9 nodes, cohesion: 0.22)

- payment_status_screen
- dart:async
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/providers/purchase_badge_provider.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- _PaymentState
- _PaymentStatusScreenState()

### Community 103 — debug_api_calls (9 nodes, cohesion: 0.33)

- debug_api_calls
- check_django_urls()
- generate_flutter_debug_code()
- datetime
- json
- requests
- main()
- simulate_flutter_calls()
- test_all_possible_urls()

### Community 104 — auth_provider (9 nodes, cohesion: 0.22)

- auth_provider
- dart:async
- package:flutter/foundation.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/auth/repositories/auth_repository.dart
- package:resume_plus_clean/models/user.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/fcm_service.dart
- package:resume_plus_clean/services/storage_service.dart

### Community 105 — audio_sessions_screen (9 nodes, cohesion: 0.22)

- audio_sessions_screen
- _AudioSessionsScreenState()
- dart:async
- package:audioplayers/audioplayers.dart
- package:flutter/material.dart
- package:resume_plus_clean/features/app/screens/main_navigation_screen.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/snackbar_service.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 106 — FeatureTestSuite (9 nodes, cohesion: 0.50)

- FeatureTestSuite
- .__init__()
- .log_test()
- .run_all_tests()
- .test_exercise_generation()
- .test_exercise_service()
- .test_otp_system()
- .test_summary_validation()
- .test_user_permissions()

### Community 107 — text_to_speech_service (9 nodes, cohesion: 0.22)

- text_to_speech_service
- _audioService()
- audio_service.dart
- package:flutter/foundation.dart
- _instance()
- _language()
- _pitch()
- _rate()
- _volume()

### Community 108 — test_subscription_creation (9 nodes, cohesion: 0.22)

- test_subscription_creation
- django
- django.contrib.auth.models.User
- os
- payments.models.Abonnement
- payments.models.Service
- requests
- sys
- test_subscription_creation()

### Community 109 — debug_wsgi_user (9 nodes, cohesion: 0.33)

- debug_wsgi_user
- check_python_path()
- django
- os
- sys
- main()
- test_audio_processing_import()
- test_imports()
- test_view_import()

### Community 110 — profile_section (9 nodes, cohesion: 0.22)

- profile_section
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/auth/providers/auth_provider.dart
- package:resume_plus_clean/features/settings/screens/edit_profile_screen.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/snackbar_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- _ProfileSectionState()

### Community 111 — notification_service (9 nodes, cohesion: 0.22)

- notification_service
- dart:async
- package:flutter/foundation.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/utils/logger.dart
- _instance()
- _poll()
- _unreadCount()
- _updateCount()

### Community 112 — web_audio_recorder (9 nodes, cohesion: 0.22)

- web_audio_recorder
- dart:async
- dart:typed_data
- package:flutter/foundation.dart
- _instance()
- _isPaused()
- _isRecording()
- kIsWeb()
- _recordingStartTime()

### Community 113 — purchase_summary_screen (9 nodes, cohesion: 0.22)

- purchase_summary_screen
- package:flutter/material.dart
- package:resume_plus_clean/features/purchases/screens/payment_status_screen.dart
- package:resume_plus_clean/models/payment_method.dart
- package:resume_plus_clean/models/summary.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/snackbar_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- _PurchaseSummaryScreenState()

### Community 114 — cp_onboarding_flow (8 nodes, cohesion: 0.25)

- cp_onboarding_flow
- _CPOnboardingFlowState()
- package:flutter/material.dart
- package:flutter/services.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- _WidgetExt
- .f()

### Community 115 — fix_encoding_sqlite (8 nodes, cohesion: 0.25)

- fix_encoding_sqlite
- courses.models.Session
- courses.models.Summary
- django
- django.conf.settings
- django.db.connection
- os
- sys

### Community 116 — admin (8 nodes, cohesion: 0.25)

- admin
- CustomUserAdmin
- django.contrib.admin
- django.contrib.auth.admin.UserAdmin
- django.contrib.auth.models.User
- .models.UserProfile
- UserProfileAdmin
- UserProfileInline

### Community 117 — check_services (8 nodes, cohesion: 0.25)

- check_services
- check_services()
- django
- django.contrib.auth.models.User
- os
- payments.models.Abonnement
- payments.models.Service
- sys

### Community 118 — check_db_services (8 nodes, cohesion: 0.25)

- check_db_services
- django
- django.contrib.auth.models.User
- django.db.connection
- os
- rest_framework.authtoken.models.Token
- sys
- users.models.UserProfile

### Community 119 — audio_service (8 nodes, cohesion: 0.25)

- audio_service
- _currentText()
- package:flutter/foundation.dart
- package:flutter_tts/flutter_tts.dart
- web_audio_service.dart
- _instance()
- _isInitialized()
- _isPaused()

### Community 120 — manual_entry_screen (8 nodes, cohesion: 0.25)

- manual_entry_screen
- package:flutter/material.dart
- package:resume_plus_clean/models/course.dart
- package:resume_plus_clean/models/professeur.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/snackbar_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- _ManualEntryScreenState()

### Community 121 — health_check (8 nodes, cohesion: 0.25)

- health_check
- health_check()
- django.conf.settings
- django.db.connection
- django.http.JsonResponse
- django.views.decorators.csrf.csrf_exempt
- django.views.decorators.http.require_http_methods
- json

### Community 122 — serializers (8 nodes, cohesion: 0.29)

- serializers
- CreateSecurityLogSerializer
- .create()
- .get_client_ip()
- .models.SecurityLog
- rest_framework.serializers
- Meta
- SecurityLogSerializer

### Community 123 — exercise_quiz_screen (8 nodes, cohesion: 0.25)

- exercise_quiz_screen
- _ExerciseQuizScreenState()
- package:flutter/material.dart
- package:resume_plus_clean/features/exercises/screens/exercise_result_screen.dart
- package:resume_plus_clean/models/exercise.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- package:resume_plus_clean/widgets/secure_screen_wrapper.dart

### Community 124 — quick_test (8 nodes, cohesion: 0.25)

- quick_test
- http.server
- os
- socketserver
- threading
- time
- webbrowser
- start_server()

### Community 125 — fix_production_encoding (8 nodes, cohesion: 0.25)

- fix_production_encoding
- courses.models.Session
- courses.models.Summary
- django
- django.conf.settings
- django.db.connection
- os
- sys

### Community 126 — generated_plugin_registrant (8 nodes, cohesion: 0.25)

- generated_plugin_registrant
- fl_register_plugins()
- audioplayers_linux/audioplayers_linux_plugin.h
- file_selector_linux/file_selector_plugin.h
- flutter_secure_storage_linux/flutter_secure_storage_linux_plugin.h
- generated_plugin_registrant.h
- record_linux/record_linux_plugin.h
- url_launcher_linux/url_launcher_plugin.h

### Community 127 — migrate_courses_fk (8 nodes, cohesion: 0.25)

- migrate_courses_fk
- Command
- .handle()
- courses.models.Course
- courses.models.Filiere
- courses.models.Promotion
- courses.models.Universite
- django.core.management.base.BaseCommand

### Community 128 — course_summaries_screen (8 nodes, cohesion: 0.25)

- course_summaries_screen
- _CourseSummariesScreenState()
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/home/widgets/summary_card.dart
- package:resume_plus_clean/models/summary.dart'
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 129 — audio_test_page (8 nodes, cohesion: 0.25)

- audio_test_page
- _AudioTestPageState()
- dart:html'
- dart:typed_data
- package:flutter/foundation.dart
- package:flutter/material.dart
- ../services/api_service.dart
- ../services/web_audio_recorder.dart

### Community 130 — admin (8 nodes, cohesion: 0.25)

- admin
- AbonnementAdmin
- django.contrib.admin
- .models.Abonnement
- .models.Purchase
- .models.Service
- PurchaseAdmin
- ServiceAdmin

### Community 131 — tasks (8 nodes, cohesion: 0.32)

- tasks
- generate_summary_task()
- celery.shared_task
- django.utils.timezone
- logging
- process_audio_session_task()
- transcribe_audio_task()
- _validate_and_fix_duration()

### Community 132 — account_screen (8 nodes, cohesion: 0.25)

- account_screen
- _AccountScreenState()
- package:flutter/material.dart
- package:resume_plus_clean/features/splash/screens/splash_screen.dart
- package:resume_plus_clean/models/summary.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/storage_service.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 133 — migrate_courses_to_fk (8 nodes, cohesion: 0.25)

- migrate_courses_to_fk
- courses.models.Course
- courses.models.Filiere
- courses.models.Promotion
- courses.models.Universite
- django
- os
- migrate_courses()

### Community 134 — flutter_window (8 nodes, cohesion: 0.68)

- flutter_window
- FlutterWindow()
- flutter/generated_plugin_registrant.h
- flutter_window.h
- optional
- MessageHandler()
- OnCreate()
- OnDestroy()

### Community 135 — phone_login_screen (8 nodes, cohesion: 0.25)

- phone_login_screen
- package:dio/dio.dart
- package:flutter/material.dart
- package:flutter/services.dart
- package:resume_plus_clean/features/auth/screens/otp_verification_screen.dart
- package:resume_plus_clean/services/otp_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- _PhoneLoginScreenState()

### Community 136 — check_db_encoding (8 nodes, cohesion: 0.25)

- check_db_encoding
- check_database_encoding()
- generate_fix_sql()
- django
- django.db.connection
- os
- sys
- traceback

### Community 137 — purchases_screen (8 nodes, cohesion: 0.25)

- purchases_screen
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/summaries/providers/purchased_summaries_provider.dart
- package:resume_plus_clean/features/summaries/widgets/purchased_summary_card.dart
- package:resume_plus_clean/providers/tab_refresh_provider.dart
- package:resume_plus_clean/theme/app_theme.dart
- _PurchasesScreenState()

### Community 138 — test_production_api (8 nodes, cohesion: 0.39)

- test_production_api
- json
- requests
- main()
- test_audio_files_access()
- test_encoding_in_api_response()
- test_flutter_api_simulation()
- test_sessions_endpoint()

### Community 139 — AuthAPITest (8 nodes, cohesion: 0.36)

- AuthAPITest
- .setUp()
- .test_login_user()
- .test_logout()
- .test_logout_without_token()
- .test_refresh_token()
- .test_refresh_token_invalid()
- .test_register_user()

### Community 140 — filiere_summaries_screen (8 nodes, cohesion: 0.25)

- filiere_summaries_screen
- _FiliereSummariesScreenState()
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/home/widgets/summary_card.dart
- package:resume_plus_clean/models/summary.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 141 — exercise_result_screen (8 nodes, cohesion: 0.25)

- exercise_result_screen
- _ExerciseResultScreenState()
- package:flutter/material.dart
- package:resume_plus_clean/features/exercises/screens/exercise_quiz_screen.dart
- package:resume_plus_clean/models/exercise.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- package:resume_plus_clean/widgets/secure_screen_wrapper.dart

### Community 142 — admin (8 nodes, cohesion: 0.25)

- admin
- AppNotificationAdmin
- django.contrib.admin
- .models.AppNotification
- .models.UserDevice
- .models.UserNotification
- UserDeviceAdmin
- UserNotificationAdmin

### Community 143 — exercise_generator (8 nodes, cohesion: 0.25)

- exercise_generator
- generate_exercises_for_summary()
- .deepseek_service.deepseek_service
- json
- logging
- .models.Exercise
- .models.ExerciseQuestion
- .models.Summary

### Community 144 — settings_production_fixed (8 nodes, cohesion: 0.25)

- settings_production_fixed
- datetime.timedelta
- decouple.config
- decouple.Csv
- logging
- os
- pathlib.Path
- pymysql

### Community 145 — permissions (8 nodes, cohesion: 0.25)

- permissions
- rest_framework.permissions
- IsAdminOrReadOnly
- .has_permission()
- IsCPOrReadOnly
- .has_permission()
- IsOwnerOrReadOnly
- .has_object_permission()

### Community 146 — splash_screen (8 nodes, cohesion: 0.25)

- splash_screen
- package:flutter/material.dart
- package:resume_plus_clean/features/app/screens/main_navigation_screen.dart
- package:resume_plus_clean/features/auth/screens/phone_login_screen.dart
- package:resume_plus_clean/features/onboarding/onboarding_screen.dart
- package:resume_plus_clean/services/auto_login_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- _SplashScreenState()

### Community 147 — Command (7 nodes, cohesion: 0.52)

- Command
- .create_courses()
- .create_purchases()
- .create_sessions()
- .create_summaries()
- .create_users()
- .handle()

### Community 148 — linked_dropdowns (7 nodes, cohesion: 0.29)

- linked_dropdowns
- package:flutter/material.dart
- package:resume_plus_clean/models/filiere.dart
- package:resume_plus_clean/models/promotion.dart
- package:resume_plus_clean/models/universite.dart
- package:resume_plus_clean/services/api_service.dart
- _LinkedDropdownsState()

### Community 149 — settings_cors_fixed (7 nodes, cohesion: 0.29)

- settings_cors_fixed
- datetime.timedelta
- decouple.config
- decouple.Csv
- os
- pathlib.Path
- pymysql

### Community 150 — check_production_data() (7 nodes, cohesion: 0.29)

- check_production_data()
- check_production_database()
- clean_production_invalid_data()
- fix_production_encoding()
- main()
- set_production_connection_encoding()
- test_production_emoji_insertion()

### Community 151 — urls (7 nodes, cohesion: 0.29)

- urls
- django.urls.path
- .flexpay_integration.create_subscription_after_payment
- .flexpay_integration.flexpay_callback
- .flexpay_integration.initiate_subscription_payment
- .flexpay_integration.initiate_summary_purchase
- ..views

### Community 152 — recording_page (7 nodes, cohesion: 0.29)

- recording_page
- ../features/upload/screens/record_audio_screen.dart
- ../features/upload/screens/record_audio_screen_web_safe.dart
- package:flutter/foundation.dart
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- _RecordingPageState()

### Community 153 — ExerciseGenerator (7 nodes, cohesion: 0.48)

- ExerciseGenerator
- .generate_exercises_for_summary()
- ._generate_mock_questions()
- ._generate_questions_with_ai()
- .__init__()
- ._parse_ai_response()
- ._validate_question_structure()

### Community 154 — error_handler_mixin (7 nodes, cohesion: 0.29)

- error_handler_mixin
- ErrorHandlerMixin
- package:dio/dio.dart
- package:flutter/material.dart
- package:resume_plus_clean/exceptions/api_exception.dart
- package:resume_plus_clean/services/snackbar_service.dart
- package:resume_plus_clean/utils/logger.dart

### Community 155 — models (7 nodes, cohesion: 0.29)

- models
- courses.models.Filiere
- courses.models.Promotion
- courses.models.Universite
- django.contrib.auth.models.User
- django.db.models
- Meta

### Community 156 — settings_development (7 nodes, cohesion: 0.29)

- settings_development
- datetime.timedelta
- decouple.config
- decouple.Csv
- os
- pathlib.Path
- pymysql

### Community 157 — 0002_service_abonnement (7 nodes, cohesion: 0.29)

- 0002_service_abonnement
- django.conf.settings
- django.db.migrations
- django.db.models
- django.db.models.deletion
- django.utils.timezone
- Migration

### Community 158 — universite_filiere (7 nodes, cohesion: 0.29)

- universite_filiere
- filiere.dart
- package:json_annotation/json_annotation.dart
- universite.dart
- universite_filiere.g.dart
- _$UniversiteFiliereFromJson()
- _$UniversiteFiliereToJson()

### Community 159 — filiere_promotion (7 nodes, cohesion: 0.29)

- filiere_promotion
- _$FilierePromotionFromJson()
- _$FilierePromotionToJson()
- filiere.dart
- filiere_promotion.g.dart
- package:json_annotation/json_annotation.dart
- promotion.dart

### Community 160 — deepgram_service (7 nodes, cohesion: 0.29)

- deepgram_service
- decouple.config
- django.conf.settings
- json
- logging
- os
- requests

### Community 161 — audio_sessions_page (7 nodes, cohesion: 0.29)

- audio_sessions_page
- _AudioSessionsPageState()
- dart:html'
- package:flutter/material.dart
- package:intl/intl.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 162 — periodic_tasks (7 nodes, cohesion: 0.29)

- periodic_tasks
- check_subscriptions_expired()
- check_subscriptions_expiring_soon()
- celery.shared_task
- datetime.timedelta
- django.utils.timezone
- logging

### Community 163 — NotificationTargetingLogicTest (7 nodes, cohesion: 0.29)

- NotificationTargetingLogicTest
- .setUp()
- .test_case_1_no_filters_global()
- .test_case_2_universite_only()
- .test_case_3_universite_filiere()
- .test_case_4_universite_filiere_promotion()
- .test_cp_receives_own_notification()

### Community 164 — auto_login_service (7 nodes, cohesion: 0.29)

- auto_login_service
- AppStartState
- dart:math
- package:flutter/foundation.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/storage_service.dart
- package:shared_preferences/shared_preferences.dart

### Community 165 — notification_detail_screen (7 nodes, cohesion: 0.29)

- notification_detail_screen
- package:flutter/material.dart
- package:intl/intl.dart
- package:resume_plus_clean/models/app_notification.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- _NotificationDetailScreenState()

### Community 166 — notification_provider (7 nodes, cohesion: 0.29)

- notification_provider
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/models/app_notification.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/notification_service.dart
- load()
- _service()

### Community 167 — settings_production (7 nodes, cohesion: 0.29)

- settings_production
- datetime.timedelta
- decouple.config
- decouple.Csv
- os
- pathlib.Path
- pymysql

### Community 168 — test_exercise_generation (7 nodes, cohesion: 0.29)

- test_exercise_generation
- courses.exercise_generator.ExerciseGenerator
- courses.models.Summary
- django
- django.conf.settings
- os
- run_test()

### Community 169 — course_selection_screen (7 nodes, cohesion: 0.29)

- course_selection_screen
- _CourseSelectionScreenState()
- package:flutter/material.dart
- package:resume_plus_clean/models/course.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/snackbar_service.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 170 — main (7 nodes, cohesion: 0.29)

- main
- flutter/dart_project.h
- flutter/flutter_view_controller.h
- flutter_window.h
- utils.h
- windows.h
- wWinMain()

### Community 171 — AbonnementCreateSerializer (7 nodes, cohesion: 0.29)

- AbonnementCreateSerializer
- .create()
- SummaryCreateSerializer
- .create()
- .validate_professeur()
- .validate_texte_resume()
- .validate_titre()

### Community 172 — GeneratedPluginRegistrant (7 nodes, cohesion: 0.29)

- GeneratedPluginRegistrant
- GeneratedPluginRegistrant
- .registerWith()
- androidx.annotation.Keep
- androidx.annotation.NonNull
- io.flutter.embedding.engine.FlutterEngine
- io.flutter.Log

### Community 173 — storage_service (7 nodes, cohesion: 0.29)

- storage_service
- accessToken()
- deleteTokens()
- dart:convert
- package:flutter/foundation.dart
- package:flutter_secure_storage/flutter_secure_storage.dart
- package:shared_preferences/shared_preferences.dart

### Community 174 — setup_exercise_service (7 nodes, cohesion: 0.29)

- setup_exercise_service
- courses.models.Service
- django
- django.db.transaction
- os
- sys
- setup_exercise_service()

### Community 175 — SubscriptionExpirationTest (7 nodes, cohesion: 0.29)

- SubscriptionExpirationTest
- .setUp()
- .test_active_subscription()
- .test_cp_admin_require_subscription()
- .test_expired_subscription()
- .test_inactive_status_subscription()
- .test_no_subscription()

### Community 176 — test_simple_audio_upload (7 nodes, cohesion: 0.29)

- test_simple_audio_upload
- io
- json
- random
- requests
- struct
- wave

### Community 177 — splash_screen (7 nodes, cohesion: 0.29)

- splash_screen
- dart:async
- package:flutter/material.dart
- package:lottie/lottie.dart
- package:resume_plus_clean/features/onboarding/onboarding_screen.dart
- package:resume_plus_clean/theme/app_theme.dart
- _SplashScreenAltState()

### Community 178 — middleware (7 nodes, cohesion: 0.29)

- middleware
- datetime
- django.utils.deprecation.MiddlewareMixin
- logging
- JWTAuthenticationMiddleware
- .process_request()
- .process_response()

### Community 179 — 0022_exercise_created_by (6 nodes, cohesion: 0.33)

- 0022_exercise_created_by
- django.conf.settings
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 180 — settings_corrected (6 nodes, cohesion: 0.33)

- settings_corrected
- datetime.timedelta
- decouple.config
- os
- pathlib.Path
- pymysql

### Community 181 — win32_window (6 nodes, cohesion: 0.33)

- win32_window
- functional
- memory
- string
- windows.h
- Size

### Community 182 — associate_prof_cours_screen (6 nodes, cohesion: 0.33)

- associate_prof_cours_screen
- _AssociateProfCoursScreenState()
- package:flutter/material.dart
- package:flutter/services.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 183 — 0016_filiere_promotions_m2m (6 nodes, cohesion: 0.33)

- 0016_filiere_promotions_m2m
- copy_auto_to_through()
- copy_through_to_auto()
- django.db.migrations
- django.db.models
- Migration

### Community 184 — 0001_initial (6 nodes, cohesion: 0.33)

- 0001_initial
- django.conf.settings
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 185 — 0003_service_abonnement (6 nodes, cohesion: 0.33)

- 0003_service_abonnement
- django.conf.settings
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 186 — screen_security_service (6 nodes, cohesion: 0.33)

- screen_security_service
- dart:io
- package:flutter/foundation.dart
- package:flutter/services.dart
- package:screen_protector/screen_protector.dart
- _isSecured()

### Community 187 — main() (6 nodes, cohesion: 0.33)

- main()
- test_expired_notification()
- test_expiring_soon_notification()
- test_multiple_notifications()
- test_purchase_notification()
- test_subscription_notification_creation()

### Community 188 — 0018_user_personalized_exercises (6 nodes, cohesion: 0.33)

- 0018_user_personalized_exercises
- django.conf.settings
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 189 — summary_card (6 nodes, cohesion: 0.33)

- summary_card
- package:flutter/material.dart
- package:intl/intl.dart
- package:resume_plus_clean/features/summary_details/screens/summary_details_screen.dart
- package:resume_plus_clean/models/summary.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 190 — settings (6 nodes, cohesion: 0.33)

- settings
- celery.schedules.crontab
- datetime.timedelta
- decouple.config
- os
- pathlib.Path

### Community 191 — 0004_alter_abonnement_etudiant (6 nodes, cohesion: 0.33)

- 0004_alter_abonnement_etudiant
- django.conf.settings
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 192 — 0011_exercise_service_is_active_summary_is_validated_and_more (6 nodes, cohesion: 0.33)

- 0011_exercise_service_is_active_summary_is_validated_and_more
- django.conf.settings
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 193 — RunnerTests (6 nodes, cohesion: 0.33)

- RunnerTests
- Cocoa
- FlutterMacOS
- XCTest
- RunnerTests
- testExample

### Community 194 — purchased_summary_card (6 nodes, cohesion: 0.33)

- purchased_summary_card
- package:flutter/material.dart
- package:resume_plus_clean/features/summary_details/screens/summary_details_screen.dart
- package:resume_plus_clean/models/purchase.dart
- package:resume_plus_clean/models/summary.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 195 — 0001_initial (6 nodes, cohesion: 0.33)

- 0001_initial
- django.conf.settings
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 196 — create_cours_screen (6 nodes, cohesion: 0.33)

- create_cours_screen
- _CreateCoursScreenState()
- package:flutter/material.dart
- package:flutter/services.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 197 — RunnerTests (6 nodes, cohesion: 0.33)

- RunnerTests
- Flutter
- UIKit
- XCTest
- RunnerTests
- testExample

### Community 198 — 0017_universite_filieres_m2m (6 nodes, cohesion: 0.33)

- 0017_universite_filieres_m2m
- copy_universite_filiere_to_m2m()
- django.db.migrations
- django.db.models
- Migration
- restore_universite_filiere_from_m2m()

### Community 199 — 0001_initial (6 nodes, cohesion: 0.33)

- 0001_initial
- django.conf.settings
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 200 — 0001_initial (6 nodes, cohesion: 0.33)

- 0001_initial
- django.conf.settings
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 201 — create_professeur_screen (6 nodes, cohesion: 0.33)

- create_professeur_screen
- _CreateProfesseurScreenState()
- package:flutter/material.dart
- package:flutter/services.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 202 — check_database_tables() (6 nodes, cohesion: 0.33)

- check_database_tables()
- check_django_settings()
- check_tokens()
- check_users()
- main()
- test_token_authentication()

### Community 203 — exercise_subscription_screen (6 nodes, cohesion: 0.33)

- exercise_subscription_screen
- _ExerciseSubscriptionScreenState()
- package:flutter/material.dart
- package:resume_plus_clean/features/purchases/screens/payment_status_screen.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 204 — 0001_initial (6 nodes, cohesion: 0.33)

- 0001_initial
- django.conf.settings
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 205 — flutter_window (6 nodes, cohesion: 0.33)

- flutter_window
- FlutterWindow()
- flutter/dart_project.h
- flutter/flutter_view_controller.h
- memory
- win32_window.h

### Community 206 — test_audio_functionality (6 nodes, cohesion: 0.33)

- test_audio_functionality
- json
- os
- requests
- test_audio_endpoints()
- test_database_content()

### Community 207 — create_admin_user() (6 nodes, cohesion: 0.33)

- create_admin_user()
- main()
- seed_filieres()
- seed_promotions()
- seed_services_abonnement()
- seed_universites()

### Community 208 — onboarding_screen (6 nodes, cohesion: 0.33)

- onboarding_screen
- package:flutter/material.dart
- package:resume_plus_clean/features/auth/screens/phone_login_screen.dart
- package:resume_plus_clean/services/storage_service.dart
- package:resume_plus_clean/theme/app_theme.dart
- _OnboardingScreenState()

### Community 209 — 0010_professeur_session_professeur_fk_summary_professeur (6 nodes, cohesion: 0.33)

- 0010_professeur_session_professeur_fk_summary_professeur
- django.conf.settings
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 210 — test_encoding_fix (6 nodes, cohesion: 0.47)

- test_encoding_fix
- json
- requests
- main()
- test_summary_retrieval()
- test_summary_with_special_chars()

### Community 211 — auth_repository (6 nodes, cohesion: 0.33)

- auth_repository
- dart:async
- package:dio/dio.dart
- package:resume_plus_clean/models/user.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/storage_service.dart

### Community 212 — SubscriptionNotificationTest (6 nodes, cohesion: 0.33)

- SubscriptionNotificationTest
- .setUp()
- .test_multiple_subscriptions_notifications()
- .test_subscription_expired_notification()
- .test_subscription_expiring_soon_notification()
- .test_subscription_paid_notification()

### Community 213 — models (6 nodes, cohesion: 0.33)

- models
- django.contrib.auth.models.User
- django.db.models
- Meta
- SecurityLog
- .__str__()

### Community 214 — AppDelegate (6 nodes, cohesion: 0.33)

- AppDelegate
- AppDelegate
- applicationShouldTerminateAfterLastWindowClosed
- applicationSupportsSecureRestorableState
- Cocoa
- FlutterMacOS

### Community 215 — enhanced_auth_demo_page (5 nodes, cohesion: 0.40)

- enhanced_auth_demo_page
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/providers/api_provider.dart
- package:resume_plus_clean/widgets/enhanced_auth_widget.dart

### Community 216 — otp_service (5 nodes, cohesion: 0.40)

- otp_service
- ApiService()
- package:dio/dio.dart
- package:flutter/foundation.dart
- package:resume_plus_clean/services/api_service.dart

### Community 217 — check_accessible_courses (5 nodes, cohesion: 0.40)

- check_accessible_courses
- courses.models.Course
- django
- django.contrib.auth.models.User
- os

### Community 218 — create_simple_audio_file() (5 nodes, cohesion: 0.50)

- create_simple_audio_file()
- main()
- test_audio_upload_direct()
- test_simple_endpoints()
- test_with_different_course_ids()

### Community 219 — 0005_universitefiliere_filierepromotion_and_more (5 nodes, cohesion: 0.40)

- 0005_universitefiliere_filierepromotion_and_more
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 220 — fix_user_university (5 nodes, cohesion: 0.40)

- fix_user_university
- courses.models.Universite
- django
- django.contrib.auth.models.User
- os

### Community 221 — Summary (5 nodes, cohesion: 0.40)

- Summary
- .author_badge()
- .can_generate_exercises()
- .get_author_display_for_user()
- .__str__()

### Community 222 — 0005_purchase_service (5 nodes, cohesion: 0.40)

- 0005_purchase_service
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 223 — simple_login_service (5 nodes, cohesion: 0.40)

- simple_login_service
- ApiService()
- package:dio/dio.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/services/storage_service.dart

### Community 224 — MainFlutterWindow (5 nodes, cohesion: 0.40)

- MainFlutterWindow
- awakeFromNib
- Cocoa
- FlutterMacOS
- MainFlutterWindow

### Community 225 — urls (5 nodes, cohesion: 0.40)

- urls
- django.urls.include
- django.urls.path
- rest_framework.routers.DefaultRouter
- ..views

### Community 226 — fix_settings_mysql (5 nodes, cohesion: 0.40)

- fix_settings_mysql
- create_env_file()
- fix_settings_mysql()
- os
- re

### Community 227 — filiere_promotion.g (5 nodes, cohesion: 0.40)

- filiere_promotion.g
- FilierePromotion()
- _$FilierePromotionFromJson()
- _$FilierePromotionToJson()
- filiere_promotion.dart

### Community 228 — ai_content_view (5 nodes, cohesion: 0.40)

- ai_content_view
- _AiContentViewState()
- package:flutter/material.dart
- package:google_fonts/google_fonts.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 229 — tts_reader_widget (5 nodes, cohesion: 0.40)

- tts_reader_widget
- package:flutter/material.dart
- package:resume_plus_clean/services/text_to_speech_service.dart
- _TtsButtonState()
- _TtsReaderWidgetState()

### Community 230 — 0002_remove_userprofile_role_and_more (5 nodes, cohesion: 0.40)

- 0002_remove_userprofile_role_and_more
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 231 — 0021_add_dispense_model (5 nodes, cohesion: 0.40)

- 0021_add_dispense_model
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 232 — test_api_only (5 nodes, cohesion: 0.50)

- test_api_only
- json
- requests
- main()
- test_endpoint()

### Community 233 — PurchaseNotificationTest (5 nodes, cohesion: 0.40)

- PurchaseNotificationTest
- .setUp()
- .test_multiple_purchases_notifications()
- .test_purchase_without_summary()
- .test_summary_purchase_notification()

### Community 234 — 0019_course_m2m_relations (5 nodes, cohesion: 0.40)

- 0019_course_m2m_relations
- django.db.migrations
- django.db.models
- migrate_fk_to_m2m()
- Migration

### Community 235 — AppDelegate (5 nodes, cohesion: 0.40)

- AppDelegate
- application
- FirebaseCore
- Flutter
- UIKit

### Community 236 — service_provider (5 nodes, cohesion: 0.40)

- service_provider
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/home/providers/summary_provider.dart
- package:resume_plus_clean/models/service.dart
- package:resume_plus_clean/services/api_service.dart

### Community 237 — test_api (5 nodes, cohesion: 0.40)

- test_api
- json
- requests
- test_abonnements_api()
- test_services_api()

### Community 238 — deepseek_service (5 nodes, cohesion: 0.40)

- deepseek_service
- django.conf.settings
- logging
- os
- requests

### Community 239 — 0004_alter_purchase_summary (5 nodes, cohesion: 0.40)

- 0004_alter_purchase_summary
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 240 — subscription_provider (5 nodes, cohesion: 0.40)

- subscription_provider
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/home/providers/summary_provider.dart
- package:resume_plus_clean/models/abonnement.dart
- package:resume_plus_clean/services/api_service.dart

### Community 241 — UniversiteFiliereTest (5 nodes, cohesion: 0.40)

- UniversiteFiliereTest
- .setUp()
- .setUpTestData()
- .test_relation_universite_filiere()
- .test_relation_universite_filiere_creation()

### Community 242 — 0014_professeur_filieres_fix (5 nodes, cohesion: 0.40)

- 0014_professeur_filieres_fix
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 243 — 0010_professeurfilieres_alter_professeur_filieres (5 nodes, cohesion: 0.40)

- 0010_professeurfilieres_alter_professeur_filieres
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 244 — fix_user_promotion (5 nodes, cohesion: 0.40)

- fix_user_promotion
- courses.models.Promotion
- django
- django.contrib.auth.models.User
- os

### Community 245 — 0009_add_course_fk_fields (5 nodes, cohesion: 0.40)

- 0009_add_course_fk_fields
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 246 — enhanced_auth_widget (5 nodes, cohesion: 0.40)

- enhanced_auth_widget
- _EnhancedAuthWidgetState()
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/providers/api_provider.dart

### Community 247 — test_courses_api (5 nodes, cohesion: 0.50)

- test_courses_api
- json
- requests
- main()
- test_endpoint()

### Community 248 — widget_test (5 nodes, cohesion: 0.40)

- widget_test
- package:flutter/material.dart
- package:flutter_test/flutter_test.dart
- package:resume_plus_clean/main.dart
- main()

### Community 249 — summary_provider (5 nodes, cohesion: 0.40)

- summary_provider
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/models/summary.dart'
- package:resume_plus_clean/services/api_service.dart
- package:shared_preferences/shared_preferences.dart

### Community 250 — check_existing_data() (5 nodes, cohesion: 0.40)

- check_existing_data()
- clean_invalid_utf8_data()
- fix_sqlite_encoding()
- main()
- test_emoji_insertion()

### Community 251 — audio_playback_test_page (5 nodes, cohesion: 0.40)

- audio_playback_test_page
- _AudioPlaybackTestPageState()
- package:flutter/material.dart
- ../services/api_service.dart
- ../widgets/audio_file_player_widget.dart

### Community 252 — debug_access (5 nodes, cohesion: 0.40)

- debug_access
- courses.models.Course
- django
- django.contrib.auth.models.User
- os

### Community 253 — ._clean_transcript() (5 nodes, cohesion: 0.60)

- ._clean_transcript()
- ._extract_main_ideas()
- ._generate_intelligent_summary()
- ._generate_local_summary()
- ._structure_summary()

### Community 254 — universite_filiere.g (5 nodes, cohesion: 0.40)

- universite_filiere.g
- universite_filiere.dart
- UniversiteFiliere()
- _$UniversiteFiliereFromJson()
- _$UniversiteFiliereToJson()

### Community 255 — test_correct_endpoints (5 nodes, cohesion: 0.50)

- test_correct_endpoints
- json
- requests
- main()
- test_endpoint()

### Community 256 — test_simple_page (5 nodes, cohesion: 0.40)

- test_simple_page
- package:flutter/material.dart
- services/api_service_debug.dart
- widgets/audio_file_player_widget.dart
- _TestSimplePageState()

### Community 257 — 0007_transcription_summary_transcription (5 nodes, cohesion: 0.40)

- 0007_transcription_summary_transcription
- django.db.migrations
- django.db.models
- django.db.models.deletion
- Migration

### Community 258 — edit_summary_screen (5 nodes, cohesion: 0.40)

- edit_summary_screen
- _EditSummaryScreenState()
- package:flutter/material.dart
- package:resume_plus_clean/services/api_service.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 259 — simple_data_page (4 nodes, cohesion: 0.50)

- simple_data_page
- package:flutter/material.dart
- package:resume_plus_clean/services/simple_login_service.dart
- _SimpleDataPageState()

### Community 260 — test_endpoints_existence (4 nodes, cohesion: 0.50)

- test_endpoints_existence
- json
- requests
- test_all_endpoints()

### Community 261 — 0012_add_summary_title_price_to_session (4 nodes, cohesion: 0.50)

- 0012_add_summary_title_price_to_session
- django.db.migrations
- django.db.models
- Migration

### Community 262 — debug_page (4 nodes, cohesion: 0.50)

- debug_page
- _DebugPageState()
- package:dio/dio.dart
- package:flutter/material.dart

### Community 263 — 0013_make_professeur_optional (4 nodes, cohesion: 0.50)

- 0013_make_professeur_optional
- django.db.migrations
- django.db.models
- Migration

### Community 264 — 0002_filiere_promotion_universite (4 nodes, cohesion: 0.50)

- 0002_filiere_promotion_universite
- django.db.migrations
- django.db.models
- Migration

### Community 265 — course_tile (4 nodes, cohesion: 0.50)

- course_tile
- package:flutter/material.dart
- package:resume_plus_clean/features/course/screens/course_summaries_screen.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 266 — admin (4 nodes, cohesion: 0.50)

- admin
- django.contrib.admin
- .models.SecurityLog
- SecurityLogAdmin

### Community 267 — create_exercise_service (4 nodes, cohesion: 0.50)

- create_exercise_service
- django
- os
- payments.models.Service

### Community 268 — app_theme (4 nodes, cohesion: 0.50)

- app_theme
- BorderRadius()
- package:flutter/material.dart
- package:google_fonts/google_fonts.dart

### Community 269 — 0003_alter_purchase_payment_method_alter_service_currency (4 nodes, cohesion: 0.50)

- 0003_alter_purchase_payment_method_alter_service_currency
- django.db.migrations
- django.db.models
- Migration

### Community 270 — web_audio_service (4 nodes, cohesion: 0.50)

- web_audio_service
- package:flutter/foundation.dart
- _instance()
- _isPaused()

### Community 271 — 0003_userprofile_reset_code_and_more (4 nodes, cohesion: 0.50)

- 0003_userprofile_reset_code_and_more
- django.db.migrations
- django.db.models
- Migration

### Community 272 — test_services_endpoint (4 nodes, cohesion: 0.50)

- test_services_endpoint
- json
- requests
- test_services_with_auth()

### Community 273 — theme_selector (4 nodes, cohesion: 0.50)

- theme_selector
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/settings/providers/theme_provider.dart

### Community 274 — celery (4 nodes, cohesion: 0.50)

- celery
- debug_task()
- celery.Celery
- os

### Community 275 — simple_login_page (4 nodes, cohesion: 0.50)

- simple_login_page
- package:flutter/material.dart
- package:resume_plus_clean/services/simple_login_service.dart
- _SimpleLoginPageState()

### Community 276 — 0020_add_difficulty_to_exercise (4 nodes, cohesion: 0.50)

- 0020_add_difficulty_to_exercise
- django.db.migrations
- django.db.models
- Migration

### Community 277 — purchase_badge_provider (4 nodes, cohesion: 0.50)

- purchase_badge_provider
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/services/api_service.dart
- package:shared_preferences/shared_preferences.dart

### Community 278 — file_helper_io (4 nodes, cohesion: 0.50)

- file_helper_io
- dart:io
- dart:typed_data
- readFileBytes()

### Community 279 — 0006_migrate_existing_relations (4 nodes, cohesion: 0.50)

- 0006_migrate_existing_relations
- django.db.migrations
- migrate_existing_relations()
- Migration

### Community 280 — secure_screen_wrapper (4 nodes, cohesion: 0.50)

- secure_screen_wrapper
- package:flutter/material.dart
- package:resume_plus_clean/services/screen_security_service.dart
- _SecureScreenWrapperState()

### Community 281 — audio_player_widget (4 nodes, cohesion: 0.50)

- audio_player_widget
- _AudioPlayerWidgetState()
- package:flutter/material.dart
- ../services/audio_service.dart

### Community 282 — test_flutter_api (4 nodes, cohesion: 0.50)

- test_flutter_api
- lib/services/api_service.dart
- package:flutter/material.dart
- main()

### Community 283 — subscription_card (4 nodes, cohesion: 0.50)

- subscription_card
- package:flutter/material.dart
- package:intl/intl.dart
- package:resume_plus_clean/models/abonnement.dart

### Community 284 — 0005_userprofile_profile_picture (4 nodes, cohesion: 0.50)

- 0005_userprofile_profile_picture
- django.db.migrations
- django.db.models
- Migration

### Community 285 — find_courses_endpoint (4 nodes, cohesion: 0.50)

- find_courses_endpoint
- find_courses_endpoint()
- json
- requests

### Community 286 — api_error_view (4 nodes, cohesion: 0.50)

- api_error_view
- package:flutter/material.dart
- package:resume_plus_clean/exceptions/api_exception.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 287 — check_user_profile (4 nodes, cohesion: 0.50)

- check_user_profile
- django
- django.contrib.auth.models.User
- os

### Community 288 — 0004_userprofile_otp_attempts_userprofile_otp_code_and_more (4 nodes, cohesion: 0.50)

- 0004_userprofile_otp_attempts_userprofile_otp_code_and_more
- django.db.migrations
- django.db.models
- Migration

### Community 289 — manage (4 nodes, cohesion: 0.50)

- manage
- os
- sys
- main()

### Community 290 — 0008_add_session_processing_fields (4 nodes, cohesion: 0.50)

- 0008_add_session_processing_fields
- django.db.migrations
- django.db.models
- Migration

### Community 291 — apps (4 nodes, cohesion: 0.50)

- apps
- django.apps.AppConfig
- PaymentsConfig
- .ready()

### Community 292 — audio_file_player_widget (4 nodes, cohesion: 0.50)

- audio_file_player_widget
- _AudioFilePlayerWidgetState()
- package:flutter/material.dart
- ../services/audio_file_player_service.dart

### Community 293 — test_summaries_response (4 nodes, cohesion: 0.50)

- test_summaries_response
- json
- requests
- test_summaries_endpoint()

### Community 294 — theme_provider (4 nodes, cohesion: 0.50)

- theme_provider
- package:flutter/material.dart
- package:flutter_riverpod/flutter_riverpod.dart
- package:shared_preferences/shared_preferences.dart

### Community 295 — test_correct_courses_endpoint (4 nodes, cohesion: 0.50)

- test_correct_courses_endpoint
- json
- requests
- test_correct_courses_endpoint()

### Community 296 — test_seed_creation (3 nodes, cohesion: 0.67)

- test_seed_creation
- pymysql
- test_database_content()

### Community 297 — api_exception (3 nodes, cohesion: 0.67)

- api_exception
- ApiExceptionType
- package:dio/dio.dart

### Community 298 — urls (3 nodes, cohesion: 0.67)

- urls
- django.urls.path
- ..views

### Community 299 — urls (3 nodes, cohesion: 0.67)

- urls
- django.urls.path
- ..views

### Community 300 — api_provider (3 nodes, cohesion: 0.67)

- api_provider
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/services/api_service.dart

### Community 301 — utils (3 nodes, cohesion: 0.67)

- utils
- string
- vector

### Community 302 — api_service copy (3 nodes, cohesion: 0.67)

- api_service copy
- package:dio/dio.dart
- package:resume_plus_clean/services/storage_service.dart

### Community 303 — apps (3 nodes, cohesion: 0.67)

- apps
- django.apps.AppConfig
- SecurityConfig

### Community 304 — MainActivity (3 nodes, cohesion: 0.67)

- MainActivity
- io.flutter.embedding.android.FlutterActivity
- MainActivity

### Community 305 — urls (3 nodes, cohesion: 0.67)

- urls
- django.urls.path
- ..views

### Community 306 — auth_providers (3 nodes, cohesion: 0.67)

- auth_providers
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/features/auth/repositories/auth_repository.dart

### Community 307 — 0015_merge_20260523_2104 (3 nodes, cohesion: 0.67)

- 0015_merge_20260523_2104
- django.db.migrations
- Migration

### Community 308 — wsgi (3 nodes, cohesion: 0.67)

- wsgi
- django.core.wsgi.get_wsgi_application
- os

### Community 309 — user (3 nodes, cohesion: 0.67)

- user
- groupe()
- id()

### Community 310 — about_screen (3 nodes, cohesion: 0.67)

- about_screen
- package:flutter/material.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 311 — test_local_server (3 nodes, cohesion: 0.67)

- test_local_server
- requests
- quick_test()

### Community 312 — snackbar_service (3 nodes, cohesion: 0.67)

- snackbar_service
- package:flutter/material.dart
- _scaffoldMessengerKey()

### Community 313 — demo_data_service (3 nodes, cohesion: 0.67)

- demo_data_service
- package:resume_plus_clean/models/summary.dart'
- _instance()

### Community 314 — apps (3 nodes, cohesion: 0.67)

- apps
- django.apps.AppConfig
- NotificationsConfig

### Community 315 — settings_postgresql (3 nodes, cohesion: 0.67)

- settings_postgresql
- os
- pathlib.Path

### Community 316 — apps (3 nodes, cohesion: 0.67)

- apps
- CoursesConfig
- django.apps.AppConfig

### Community 317 — apps (3 nodes, cohesion: 0.67)

- apps
- django.apps.AppConfig
- UsersConfig

### Community 318 — file_helper_stub (3 nodes, cohesion: 0.67)

- file_helper_stub
- dart:typed_data
- readFileBytes()

### Community 319 — main (3 nodes, cohesion: 0.67)

- main
- my_application.h
- main()

### Community 320 — purchased_summaries_provider (3 nodes, cohesion: 0.67)

- purchased_summaries_provider
- package:flutter_riverpod/flutter_riverpod.dart
- package:resume_plus_clean/services/api_service.dart

### Community 321 — terms_of_service_screen (3 nodes, cohesion: 0.67)

- terms_of_service_screen
- package:flutter/material.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 322 — production_settings (3 nodes, cohesion: 0.67)

- production_settings
- os
- .settings

### Community 323 — privacy_policy_screen (3 nodes, cohesion: 0.67)

- privacy_policy_screen
- package:flutter/material.dart
- package:resume_plus_clean/theme/app_theme.dart

### Community 324 — upload_screen (3 nodes, cohesion: 0.67)

- upload_screen
- package:flutter/material.dart
- package:resume_plus_clean/features/upload/screens/upload_choice_screen.dart

### Community 325 — exercise_urls (3 nodes, cohesion: 0.67)

- exercise_urls
- django.urls.path
- ..exercise_views

### Community 326 — tab_refresh_provider (2 nodes, cohesion: 1.00)

- tab_refresh_provider
- package:flutter_riverpod/flutter_riverpod.dart

### Community 327 — logger (2 nodes, cohesion: 1.00)

- logger
- package:flutter/foundation.dart

### Community 328 — gunicorn.conf (2 nodes, cohesion: 1.00)

- gunicorn.conf
- multiprocessing

### Community 329 — api_service_debug (2 nodes, cohesion: 1.00)

- api_service_debug
- package:dio/dio.dart

### Community 330 — flutter_usage_example (2 nodes, cohesion: 1.00)

- flutter_usage_example
- testAuthentication()

### Community 331 — professeur (2 nodes, cohesion: 1.00)

- professeur
- id()

### Community 332 — service (2 nodes, cohesion: 1.00)

- service
- id()

### Community 333 — my_application (2 nodes, cohesion: 1.00)

- my_application
- gtk/gtk.h

### Community 334 — generated_plugin_registrant (2 nodes, cohesion: 1.00)

- generated_plugin_registrant
- flutter/plugin_registry.h

### Community 335 — generated_plugin_registrant (2 nodes, cohesion: 1.00)

- generated_plugin_registrant
- flutter_linux/flutter_linux.h

### Community 336 — badge_icon (2 nodes, cohesion: 1.00)

- badge_icon
- package:flutter/material.dart

### Community 337 — payment_method (2 nodes, cohesion: 1.00)

- payment_method
- PaymentMethodType

### Community 338 — abonnement (2 nodes, cohesion: 1.00)

- abonnement
- id()

### Community 339 — __init__ (2 nodes, cohesion: 1.00)

- __init__
- .celery.app

### Community 340 — simple_seed (2 nodes, cohesion: 1.00)

- simple_seed
- pymysql

### Community 341 — course (2 nodes, cohesion: 1.00)

- course
- id()

### Community 342 — __init__ (1 nodes, cohesion: 1.00)

- __init__

### Community 343 — exercise (1 nodes, cohesion: 1.00)

- exercise

### Community 344 — resource (1 nodes, cohesion: 1.00)

- resource

### Community 345 — sw (1 nodes, cohesion: 1.00)

- sw

### Community 346 — GeneratedPluginRegistrant (1 nodes, cohesion: 1.00)

- GeneratedPluginRegistrant

### Community 347 — filiere (1 nodes, cohesion: 1.00)

- filiere

### Community 348 — universite (1 nodes, cohesion: 1.00)

- universite

### Community 349 — Runner-Bridging-Header (1 nodes, cohesion: 1.00)

- Runner-Bridging-Header

### Community 350 — GeneratedPluginRegistrant (1 nodes, cohesion: 1.00)

- GeneratedPluginRegistrant

### Community 351 — purchase (1 nodes, cohesion: 1.00)

- purchase

### Community 352 — promotion (1 nodes, cohesion: 1.00)

- promotion

### Community 353 — summary (1 nodes, cohesion: 1.00)

- summary

### Community 354 — app_notification (1 nodes, cohesion: 1.00)

- app_notification

## 🕳️ Knowledge Gaps

**Isolated nodes** (13):
- __init__
- GeneratedPluginRegistrant
- GeneratedPluginRegistrant
- Runner-Bridging-Header
- app_notification
- exercise
- filiere
- promotion
- purchase
- summary
- universite
- sw
- resource

**Thin communities** (< 3 nodes): 29 communities

## 💰 Token Cost

| File | Tokens |
|------|--------|
| output | 0 |
| input | 0 |
| **Total** | **0** |

## ❓ Suggested Questions

1. How does 'backend_users_tests_py' relate to 3 different communities (SubscriptionExpirationTest, AuthAPITest, tests)?
1. How does 'backend_notifications_test_payment_notifications_py' relate to 3 different communities (test_payment_notifications, PurchaseNotificationTest, SubscriptionNotificationTest)?
1. How does 'backend_courses_audio_processing_py_audioprocessor' relate to 3 different communities (audio_processing, AudioProcessor, ._clean_transcript())?
1. Can you verify the inferred relationships of 'Destroy()' (degree 43)?
1. Can you verify the inferred relationships of 'Create()' (degree 42)?
1. Can you verify the inferred relationships of 'MessageHandler()' (degree 41)?
1. What role does 'GeneratedPluginRegistrant' play? It has no connections in the graph.

---
_Generated by graphify-rs_
