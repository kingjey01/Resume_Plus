# Community 59: test_file_permissions

**Members:** 11

## Nodes

- **test_file_permissions** (`backend_test_file_permissions_py`, File, degree: 10)
- **check_wsgi_user()** (`backend_test_file_permissions_py_check_wsgi_user`, Function, degree: 2)
- **django** (`backend_test_file_permissions_py_import_django`, Module, degree: 1)
- **django.conf.settings** (`backend_test_file_permissions_py_import_django_conf_settings`, Module, degree: 1)
- **django.core.files.base.ContentFile** (`backend_test_file_permissions_py_import_django_core_files_base_contentfile`, Module, degree: 1)
- **django.core.files.storage.default_storage** (`backend_test_file_permissions_py_import_django_core_files_storage_default_storage`, Module, degree: 1)
- **os** (`backend_test_file_permissions_py_import_os`, Module, degree: 1)
- **sys** (`backend_test_file_permissions_py_import_sys`, Module, degree: 1)
- **main()** (`backend_test_file_permissions_py_main`, Function, degree: 4)
- **test_django_file_upload()** (`backend_test_file_permissions_py_test_django_file_upload`, Function, degree: 2)
- **test_media_permissions()** (`backend_test_file_permissions_py_test_media_permissions`, Function, degree: 2)

## Relationships

- backend_test_file_permissions_py → backend_test_file_permissions_py_import_os (imports)
- backend_test_file_permissions_py → backend_test_file_permissions_py_import_sys (imports)
- backend_test_file_permissions_py → backend_test_file_permissions_py_import_django (imports)
- backend_test_file_permissions_py → backend_test_file_permissions_py_import_django_conf_settings (imports)
- backend_test_file_permissions_py → backend_test_file_permissions_py_import_django_core_files_base_contentfile (imports)
- backend_test_file_permissions_py → backend_test_file_permissions_py_import_django_core_files_storage_default_storage (imports)
- backend_test_file_permissions_py → backend_test_file_permissions_py_test_media_permissions (defines)
- backend_test_file_permissions_py → backend_test_file_permissions_py_test_django_file_upload (defines)
- backend_test_file_permissions_py → backend_test_file_permissions_py_check_wsgi_user (defines)
- backend_test_file_permissions_py → backend_test_file_permissions_py_main (defines)
- backend_test_file_permissions_py_main → backend_test_file_permissions_py_test_django_file_upload (calls)
- backend_test_file_permissions_py_main → backend_test_file_permissions_py_check_wsgi_user (calls)
- backend_test_file_permissions_py_main → backend_test_file_permissions_py_test_media_permissions (calls)

