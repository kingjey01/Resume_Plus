# Community 140: permissions

**Members:** 8

## Nodes

- **permissions** (`backend_users_permissions_py`, File, degree: 4)
- **rest_framework.permissions** (`backend_users_permissions_py_import_rest_framework_permissions`, Module, degree: 1)
- **IsAdminOrReadOnly** (`backend_users_permissions_py_isadminorreadonly`, Class, degree: 2)
- **.has_permission()** (`backend_users_permissions_py_isadminorreadonly_has_permission`, Method, degree: 1)
- **IsCPOrReadOnly** (`backend_users_permissions_py_iscporreadonly`, Class, degree: 2)
- **.has_permission()** (`backend_users_permissions_py_iscporreadonly_has_permission`, Method, degree: 1)
- **IsOwnerOrReadOnly** (`backend_users_permissions_py_isownerorreadonly`, Class, degree: 2)
- **.has_object_permission()** (`backend_users_permissions_py_isownerorreadonly_has_object_permission`, Method, degree: 1)

## Relationships

- backend_users_permissions_py → backend_users_permissions_py_import_rest_framework_permissions (imports)
- backend_users_permissions_py → backend_users_permissions_py_isownerorreadonly (defines)
- backend_users_permissions_py_isownerorreadonly → backend_users_permissions_py_isownerorreadonly_has_object_permission (defines)
- backend_users_permissions_py → backend_users_permissions_py_iscporreadonly (defines)
- backend_users_permissions_py_iscporreadonly → backend_users_permissions_py_iscporreadonly_has_permission (defines)
- backend_users_permissions_py → backend_users_permissions_py_isadminorreadonly (defines)
- backend_users_permissions_py_isadminorreadonly → backend_users_permissions_py_isadminorreadonly_has_permission (defines)

