# Community 44: fix_encoding_sqlite

**Members:** 13

## Nodes

- **fix_encoding_sqlite** (`backend_fix_encoding_sqlite_py`, File, degree: 12)
- **check_existing_data()** (`backend_fix_encoding_sqlite_py_check_existing_data`, Function, degree: 2)
- **clean_invalid_utf8_data()** (`backend_fix_encoding_sqlite_py_clean_invalid_utf8_data`, Function, degree: 2)
- **fix_sqlite_encoding()** (`backend_fix_encoding_sqlite_py_fix_sqlite_encoding`, Function, degree: 2)
- **courses.models.Session** (`backend_fix_encoding_sqlite_py_import_courses_models_session`, Module, degree: 1)
- **courses.models.Summary** (`backend_fix_encoding_sqlite_py_import_courses_models_summary`, Module, degree: 1)
- **django** (`backend_fix_encoding_sqlite_py_import_django`, Module, degree: 1)
- **django.conf.settings** (`backend_fix_encoding_sqlite_py_import_django_conf_settings`, Module, degree: 1)
- **django.db.connection** (`backend_fix_encoding_sqlite_py_import_django_db_connection`, Module, degree: 1)
- **os** (`backend_fix_encoding_sqlite_py_import_os`, Module, degree: 1)
- **sys** (`backend_fix_encoding_sqlite_py_import_sys`, Module, degree: 1)
- **main()** (`backend_fix_encoding_sqlite_py_main`, Function, degree: 5)
- **test_emoji_insertion()** (`backend_fix_encoding_sqlite_py_test_emoji_insertion`, Function, degree: 2)

## Relationships

- backend_fix_encoding_sqlite_py → backend_fix_encoding_sqlite_py_import_os (imports)
- backend_fix_encoding_sqlite_py → backend_fix_encoding_sqlite_py_import_sys (imports)
- backend_fix_encoding_sqlite_py → backend_fix_encoding_sqlite_py_import_django (imports)
- backend_fix_encoding_sqlite_py → backend_fix_encoding_sqlite_py_import_django_conf_settings (imports)
- backend_fix_encoding_sqlite_py → backend_fix_encoding_sqlite_py_import_django_db_connection (imports)
- backend_fix_encoding_sqlite_py → backend_fix_encoding_sqlite_py_import_courses_models_summary (imports)
- backend_fix_encoding_sqlite_py → backend_fix_encoding_sqlite_py_import_courses_models_session (imports)
- backend_fix_encoding_sqlite_py → backend_fix_encoding_sqlite_py_fix_sqlite_encoding (defines)
- backend_fix_encoding_sqlite_py → backend_fix_encoding_sqlite_py_clean_invalid_utf8_data (defines)
- backend_fix_encoding_sqlite_py → backend_fix_encoding_sqlite_py_test_emoji_insertion (defines)
- backend_fix_encoding_sqlite_py → backend_fix_encoding_sqlite_py_check_existing_data (defines)
- backend_fix_encoding_sqlite_py → backend_fix_encoding_sqlite_py_main (defines)
- backend_fix_encoding_sqlite_py_main → backend_fix_encoding_sqlite_py_check_existing_data (calls)
- backend_fix_encoding_sqlite_py_main → backend_fix_encoding_sqlite_py_fix_sqlite_encoding (calls)
- backend_fix_encoding_sqlite_py_main → backend_fix_encoding_sqlite_py_clean_invalid_utf8_data (calls)
- backend_fix_encoding_sqlite_py_main → backend_fix_encoding_sqlite_py_test_emoji_insertion (calls)

