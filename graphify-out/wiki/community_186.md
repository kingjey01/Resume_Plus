# Community 186: models

**Members:** 6

## Nodes

- **models** (`backend_security_models_py`, File, degree: 4)
- **django.contrib.auth.models.User** (`backend_security_models_py_import_django_contrib_auth_models_user`, Module, degree: 1)
- **django.db.models** (`backend_security_models_py_import_django_db_models`, Module, degree: 1)
- **Meta** (`backend_security_models_py_meta`, Class, degree: 1)
- **SecurityLog** (`backend_security_models_py_securitylog`, Class, degree: 2)
- **.__str__()** (`backend_security_models_py_securitylog_str`, Method, degree: 1)

## Relationships

- backend_security_models_py → backend_security_models_py_import_django_db_models (imports)
- backend_security_models_py → backend_security_models_py_import_django_contrib_auth_models_user (imports)
- backend_security_models_py → backend_security_models_py_securitylog (defines)
- backend_security_models_py_securitylog → backend_security_models_py_securitylog_str (defines)
- backend_security_models_py → backend_security_models_py_meta (defines)

