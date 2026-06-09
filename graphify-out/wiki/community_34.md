# Community 34: fix_production_encoding

**Members:** 15

## Nodes

- **fix_production_encoding** (`backend_fix_production_encoding_py`, File, degree: 14)
- **check_production_data()** (`backend_fix_production_encoding_py_check_production_data`, Function, degree: 2)
- **check_production_database()** (`backend_fix_production_encoding_py_check_production_database`, Function, degree: 2)
- **clean_production_invalid_data()** (`backend_fix_production_encoding_py_clean_production_invalid_data`, Function, degree: 2)
- **fix_production_encoding()** (`backend_fix_production_encoding_py_fix_production_encoding`, Function, degree: 2)
- **courses.models.Session** (`backend_fix_production_encoding_py_import_courses_models_session`, Module, degree: 1)
- **courses.models.Summary** (`backend_fix_production_encoding_py_import_courses_models_summary`, Module, degree: 1)
- **django** (`backend_fix_production_encoding_py_import_django`, Module, degree: 1)
- **django.conf.settings** (`backend_fix_production_encoding_py_import_django_conf_settings`, Module, degree: 1)
- **django.db.connection** (`backend_fix_production_encoding_py_import_django_db_connection`, Module, degree: 1)
- **os** (`backend_fix_production_encoding_py_import_os`, Module, degree: 1)
- **sys** (`backend_fix_production_encoding_py_import_sys`, Module, degree: 1)
- **main()** (`backend_fix_production_encoding_py_main`, Function, degree: 7)
- **set_production_connection_encoding()** (`backend_fix_production_encoding_py_set_production_connection_encoding`, Function, degree: 2)
- **test_production_emoji_insertion()** (`backend_fix_production_encoding_py_test_production_emoji_insertion`, Function, degree: 2)

## Relationships

- backend_fix_production_encoding_py → backend_fix_production_encoding_py_import_os (imports)
- backend_fix_production_encoding_py → backend_fix_production_encoding_py_import_sys (imports)
- backend_fix_production_encoding_py → backend_fix_production_encoding_py_import_django (imports)
- backend_fix_production_encoding_py → backend_fix_production_encoding_py_import_django_conf_settings (imports)
- backend_fix_production_encoding_py → backend_fix_production_encoding_py_import_django_db_connection (imports)
- backend_fix_production_encoding_py → backend_fix_production_encoding_py_import_courses_models_summary (imports)
- backend_fix_production_encoding_py → backend_fix_production_encoding_py_import_courses_models_session (imports)
- backend_fix_production_encoding_py → backend_fix_production_encoding_py_check_production_database (defines)
- backend_fix_production_encoding_py → backend_fix_production_encoding_py_fix_production_encoding (defines)
- backend_fix_production_encoding_py → backend_fix_production_encoding_py_clean_production_invalid_data (defines)
- backend_fix_production_encoding_py → backend_fix_production_encoding_py_test_production_emoji_insertion (defines)
- backend_fix_production_encoding_py → backend_fix_production_encoding_py_check_production_data (defines)
- backend_fix_production_encoding_py → backend_fix_production_encoding_py_set_production_connection_encoding (defines)
- backend_fix_production_encoding_py → backend_fix_production_encoding_py_main (defines)
- backend_fix_production_encoding_py_main → backend_fix_production_encoding_py_test_production_emoji_insertion (calls)
- backend_fix_production_encoding_py_main → backend_fix_production_encoding_py_clean_production_invalid_data (calls)
- backend_fix_production_encoding_py_main → backend_fix_production_encoding_py_check_production_database (calls)
- backend_fix_production_encoding_py_main → backend_fix_production_encoding_py_set_production_connection_encoding (calls)
- backend_fix_production_encoding_py_main → backend_fix_production_encoding_py_fix_production_encoding (calls)
- backend_fix_production_encoding_py_main → backend_fix_production_encoding_py_check_production_data (calls)

