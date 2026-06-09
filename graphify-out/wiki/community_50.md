# Community 50: check_permissions_detailed

**Members:** 12

## Nodes

- **check_permissions_detailed** (`backend_check_permissions_detailed_py`, File, degree: 11)
- **check_file_permissions()** (`backend_check_permissions_detailed_py_check_file_permissions`, Function, degree: 2)
- **check_write_permission()** (`backend_check_permissions_detailed_py_check_write_permission`, Function, degree: 2)
- **get_current_user_info()** (`backend_check_permissions_detailed_py_get_current_user_info`, Function, degree: 2)
- **django** (`backend_check_permissions_detailed_py_import_django`, Module, degree: 1)
- **django.conf.settings** (`backend_check_permissions_detailed_py_import_django_conf_settings`, Module, degree: 1)
- **grp** (`backend_check_permissions_detailed_py_import_grp`, Module, degree: 1)
- **os** (`backend_check_permissions_detailed_py_import_os`, Module, degree: 1)
- **pwd** (`backend_check_permissions_detailed_py_import_pwd`, Module, degree: 1)
- **stat** (`backend_check_permissions_detailed_py_import_stat`, Module, degree: 1)
- **sys** (`backend_check_permissions_detailed_py_import_sys`, Module, degree: 1)
- **main()** (`backend_check_permissions_detailed_py_main`, Function, degree: 4)

## Relationships

- backend_check_permissions_detailed_py → backend_check_permissions_detailed_py_import_os (imports)
- backend_check_permissions_detailed_py → backend_check_permissions_detailed_py_import_sys (imports)
- backend_check_permissions_detailed_py → backend_check_permissions_detailed_py_import_django (imports)
- backend_check_permissions_detailed_py → backend_check_permissions_detailed_py_import_pwd (imports)
- backend_check_permissions_detailed_py → backend_check_permissions_detailed_py_import_grp (imports)
- backend_check_permissions_detailed_py → backend_check_permissions_detailed_py_import_stat (imports)
- backend_check_permissions_detailed_py → backend_check_permissions_detailed_py_import_django_conf_settings (imports)
- backend_check_permissions_detailed_py → backend_check_permissions_detailed_py_check_file_permissions (defines)
- backend_check_permissions_detailed_py → backend_check_permissions_detailed_py_check_write_permission (defines)
- backend_check_permissions_detailed_py → backend_check_permissions_detailed_py_get_current_user_info (defines)
- backend_check_permissions_detailed_py → backend_check_permissions_detailed_py_main (defines)
- backend_check_permissions_detailed_py_main → backend_check_permissions_detailed_py_check_write_permission (calls)
- backend_check_permissions_detailed_py_main → backend_check_permissions_detailed_py_check_file_permissions (calls)
- backend_check_permissions_detailed_py_main → backend_check_permissions_detailed_py_get_current_user_info (calls)

