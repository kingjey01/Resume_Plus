# Community 31: models

**Members:** 15

## Nodes

- **models** (`backend_payments_models_py`, File, degree: 9)
- **Abonnement** (`backend_payments_models_py_abonnement`, Class, degree: 4)
- **.is_active()** (`backend_payments_models_py_abonnement_is_active`, Method, degree: 1)
- **.save()** (`backend_payments_models_py_abonnement_save`, Method, degree: 1)
- **.__str__()** (`backend_payments_models_py_abonnement_str`, Method, degree: 1)
- **courses.models.Summary** (`backend_payments_models_py_import_courses_models_summary`, Module, degree: 1)
- **datetime.timedelta** (`backend_payments_models_py_import_datetime_timedelta`, Module, degree: 1)
- **django.contrib.auth.models.User** (`backend_payments_models_py_import_django_contrib_auth_models_user`, Module, degree: 1)
- **django.db.models** (`backend_payments_models_py_import_django_db_models`, Module, degree: 1)
- **django.utils.timezone** (`backend_payments_models_py_import_django_utils_timezone`, Module, degree: 1)
- **Meta** (`backend_payments_models_py_meta`, Class, degree: 1)
- **Purchase** (`backend_payments_models_py_purchase`, Class, degree: 2)
- **.__str__()** (`backend_payments_models_py_purchase_str`, Method, degree: 1)
- **Service** (`backend_payments_models_py_service`, Class, degree: 2)
- **.__str__()** (`backend_payments_models_py_service_str`, Method, degree: 1)

## Relationships

- backend_payments_models_py → backend_payments_models_py_import_django_db_models (imports)
- backend_payments_models_py → backend_payments_models_py_import_django_contrib_auth_models_user (imports)
- backend_payments_models_py → backend_payments_models_py_import_courses_models_summary (imports)
- backend_payments_models_py → backend_payments_models_py_import_django_utils_timezone (imports)
- backend_payments_models_py → backend_payments_models_py_import_datetime_timedelta (imports)
- backend_payments_models_py → backend_payments_models_py_service (defines)
- backend_payments_models_py_service → backend_payments_models_py_service_str (defines)
- backend_payments_models_py → backend_payments_models_py_meta (defines)
- backend_payments_models_py → backend_payments_models_py_abonnement (defines)
- backend_payments_models_py_abonnement → backend_payments_models_py_abonnement_save (defines)
- backend_payments_models_py_abonnement → backend_payments_models_py_abonnement_is_active (defines)
- backend_payments_models_py_abonnement → backend_payments_models_py_abonnement_str (defines)
- backend_payments_models_py → backend_payments_models_py_purchase (defines)
- backend_payments_models_py_purchase → backend_payments_models_py_purchase_str (defines)

