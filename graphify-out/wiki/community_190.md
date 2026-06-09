# Community 190: check_database_tables()

**Members:** 6

## Nodes

- **check_database_tables()** (`backend_check_db_services_py_check_database_tables`, Function, degree: 2)
- **check_django_settings()** (`backend_check_db_services_py_check_django_settings`, Function, degree: 2)
- **check_tokens()** (`backend_check_db_services_py_check_tokens`, Function, degree: 2)
- **check_users()** (`backend_check_db_services_py_check_users`, Function, degree: 2)
- **main()** (`backend_check_db_services_py_main`, Function, degree: 6)
- **test_token_authentication()** (`backend_check_db_services_py_test_token_authentication`, Function, degree: 2)

## Relationships

- backend_check_db_services_py_main → backend_check_db_services_py_test_token_authentication (calls)
- backend_check_db_services_py_main → backend_check_db_services_py_check_database_tables (calls)
- backend_check_db_services_py_main → backend_check_db_services_py_check_django_settings (calls)
- backend_check_db_services_py_main → backend_check_db_services_py_check_tokens (calls)
- backend_check_db_services_py_main → backend_check_db_services_py_check_users (calls)

