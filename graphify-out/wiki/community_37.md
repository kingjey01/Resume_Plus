# Community 37: models

**Members:** 14

## Nodes

- **models** (`backend_notifications_models_py`, File, degree: 10)
- **AppNotification** (`backend_notifications_models_py_appnotification`, Class, degree: 2)
- **.__str__()** (`backend_notifications_models_py_appnotification_str`, Method, degree: 1)
- **courses.models.Filiere** (`backend_notifications_models_py_import_courses_models_filiere`, Module, degree: 1)
- **courses.models.Promotion** (`backend_notifications_models_py_import_courses_models_promotion`, Module, degree: 1)
- **courses.models.Universite** (`backend_notifications_models_py_import_courses_models_universite`, Module, degree: 1)
- **django.contrib.auth.models.User** (`backend_notifications_models_py_import_django_contrib_auth_models_user`, Module, degree: 1)
- **django.db.models** (`backend_notifications_models_py_import_django_db_models`, Module, degree: 1)
- **logging** (`backend_notifications_models_py_import_logging`, Module, degree: 1)
- **Meta** (`backend_notifications_models_py_meta`, Class, degree: 1)
- **UserDevice** (`backend_notifications_models_py_userdevice`, Class, degree: 2)
- **.__str__()** (`backend_notifications_models_py_userdevice_str`, Method, degree: 1)
- **UserNotification** (`backend_notifications_models_py_usernotification`, Class, degree: 2)
- **.__str__()** (`backend_notifications_models_py_usernotification_str`, Method, degree: 1)

## Relationships

- backend_notifications_models_py → backend_notifications_models_py_import_logging (imports)
- backend_notifications_models_py → backend_notifications_models_py_import_django_db_models (imports)
- backend_notifications_models_py → backend_notifications_models_py_import_django_contrib_auth_models_user (imports)
- backend_notifications_models_py → backend_notifications_models_py_import_courses_models_universite (imports)
- backend_notifications_models_py → backend_notifications_models_py_import_courses_models_filiere (imports)
- backend_notifications_models_py → backend_notifications_models_py_import_courses_models_promotion (imports)
- backend_notifications_models_py → backend_notifications_models_py_userdevice (defines)
- backend_notifications_models_py → backend_notifications_models_py_meta (defines)
- backend_notifications_models_py_userdevice → backend_notifications_models_py_userdevice_str (defines)
- backend_notifications_models_py → backend_notifications_models_py_appnotification (defines)
- backend_notifications_models_py_appnotification → backend_notifications_models_py_appnotification_str (defines)
- backend_notifications_models_py → backend_notifications_models_py_usernotification (defines)
- backend_notifications_models_py_usernotification → backend_notifications_models_py_usernotification_str (defines)

