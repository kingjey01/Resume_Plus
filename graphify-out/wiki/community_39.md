# Community 39: check_db_services

**Members:** 14

## Nodes

- **check_db_services** (`backend_check_db_services_py`, File, degree: 13)
- **check_database_tables()** (`backend_check_db_services_py_check_database_tables`, Function, degree: 2)
- **check_django_settings()** (`backend_check_db_services_py_check_django_settings`, Function, degree: 2)
- **check_tokens()** (`backend_check_db_services_py_check_tokens`, Function, degree: 2)
- **check_users()** (`backend_check_db_services_py_check_users`, Function, degree: 2)
- **django** (`backend_check_db_services_py_import_django`, Module, degree: 1)
- **django.contrib.auth.models.User** (`backend_check_db_services_py_import_django_contrib_auth_models_user`, Module, degree: 1)
- **django.db.connection** (`backend_check_db_services_py_import_django_db_connection`, Module, degree: 1)
- **os** (`backend_check_db_services_py_import_os`, Module, degree: 1)
- **rest_framework.authtoken.models.Token** (`backend_check_db_services_py_import_rest_framework_authtoken_models_token`, Module, degree: 1)
- **sys** (`backend_check_db_services_py_import_sys`, Module, degree: 1)
- **users.models.UserProfile** (`backend_check_db_services_py_import_users_models_userprofile`, Module, degree: 1)
- **main()** (`backend_check_db_services_py_main`, Function, degree: 6)
- **test_token_authentication()** (`backend_check_db_services_py_test_token_authentication`, Function, degree: 2)

## Relationships

- backend_check_db_services_py → backend_check_db_services_py_import_os (imports)
- backend_check_db_services_py → backend_check_db_services_py_import_sys (imports)
- backend_check_db_services_py → backend_check_db_services_py_import_django (imports)
- backend_check_db_services_py → backend_check_db_services_py_import_django_contrib_auth_models_user (imports)
- backend_check_db_services_py → backend_check_db_services_py_import_rest_framework_authtoken_models_token (imports)
- backend_check_db_services_py → backend_check_db_services_py_import_users_models_userprofile (imports)
- backend_check_db_services_py → backend_check_db_services_py_import_django_db_connection (imports)
- backend_check_db_services_py → backend_check_db_services_py_check_database_tables (defines)
- backend_check_db_services_py → backend_check_db_services_py_check_tokens (defines)
- backend_check_db_services_py → backend_check_db_services_py_check_users (defines)
- backend_check_db_services_py → backend_check_db_services_py_test_token_authentication (defines)
- backend_check_db_services_py → backend_check_db_services_py_check_django_settings (defines)
- backend_check_db_services_py → backend_check_db_services_py_main (defines)
- backend_check_db_services_py_main → backend_check_db_services_py_test_token_authentication (calls)
- backend_check_db_services_py_main → backend_check_db_services_py_check_database_tables (calls)
- backend_check_db_services_py_main → backend_check_db_services_py_check_django_settings (calls)
- backend_check_db_services_py_main → backend_check_db_services_py_check_tokens (calls)
- backend_check_db_services_py_main → backend_check_db_services_py_check_users (calls)

