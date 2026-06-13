# Community 82: fix_encoding_utf8_complete

**Members:** 10

## Nodes

- **fix_encoding_utf8_complete** (`backend_fix_encoding_utf8_complete_py`, File, degree: 9)
- **clean_invalid_utf8_data()** (`backend_fix_encoding_utf8_complete_py_clean_invalid_utf8_data`, Function, degree: 2)
- **fix_database_encoding()** (`backend_fix_encoding_utf8_complete_py_fix_database_encoding`, Function, degree: 2)
- **django** (`backend_fix_encoding_utf8_complete_py_import_django`, Module, degree: 1)
- **django.conf.settings** (`backend_fix_encoding_utf8_complete_py_import_django_conf_settings`, Module, degree: 1)
- **django.db.connection** (`backend_fix_encoding_utf8_complete_py_import_django_db_connection`, Module, degree: 1)
- **os** (`backend_fix_encoding_utf8_complete_py_import_os`, Module, degree: 1)
- **sys** (`backend_fix_encoding_utf8_complete_py_import_sys`, Module, degree: 1)
- **main()** (`backend_fix_encoding_utf8_complete_py_main`, Function, degree: 4)
- **test_emoji_insertion()** (`backend_fix_encoding_utf8_complete_py_test_emoji_insertion`, Function, degree: 2)

## Relationships

- backend_fix_encoding_utf8_complete_py → backend_fix_encoding_utf8_complete_py_import_os (imports)
- backend_fix_encoding_utf8_complete_py → backend_fix_encoding_utf8_complete_py_import_sys (imports)
- backend_fix_encoding_utf8_complete_py → backend_fix_encoding_utf8_complete_py_import_django (imports)
- backend_fix_encoding_utf8_complete_py → backend_fix_encoding_utf8_complete_py_import_django_conf_settings (imports)
- backend_fix_encoding_utf8_complete_py → backend_fix_encoding_utf8_complete_py_import_django_db_connection (imports)
- backend_fix_encoding_utf8_complete_py → backend_fix_encoding_utf8_complete_py_fix_database_encoding (defines)
- backend_fix_encoding_utf8_complete_py → backend_fix_encoding_utf8_complete_py_clean_invalid_utf8_data (defines)
- backend_fix_encoding_utf8_complete_py → backend_fix_encoding_utf8_complete_py_test_emoji_insertion (defines)
- backend_fix_encoding_utf8_complete_py → backend_fix_encoding_utf8_complete_py_main (defines)
- backend_fix_encoding_utf8_complete_py_main → backend_fix_encoding_utf8_complete_py_fix_database_encoding (calls)
- backend_fix_encoding_utf8_complete_py_main → backend_fix_encoding_utf8_complete_py_clean_invalid_utf8_data (calls)
- backend_fix_encoding_utf8_complete_py_main → backend_fix_encoding_utf8_complete_py_test_emoji_insertion (calls)

