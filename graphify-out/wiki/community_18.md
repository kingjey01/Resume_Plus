# Community 18: permissions

**Members:** 20

## Nodes

- **permissions** (`backend_courses_permissions_py`, File, degree: 9)
- **CanAccessSummary** (`backend_courses_permissions_py_canaccesssummary`, Class, degree: 3)
- **.has_object_permission()** (`backend_courses_permissions_py_canaccesssummary_has_object_permission`, Method, degree: 1)
- **.has_permission()** (`backend_courses_permissions_py_canaccesssummary_has_permission`, Method, degree: 1)
- **CanAssignRole** (`backend_courses_permissions_py_canassignrole`, Class, degree: 2)
- **.has_permission()** (`backend_courses_permissions_py_canassignrole_has_permission`, Method, degree: 1)
- **CanCreateSummary** (`backend_courses_permissions_py_cancreatesummary`, Class, degree: 2)
- **.has_permission()** (`backend_courses_permissions_py_cancreatesummary_has_permission`, Method, degree: 1)
- **CanModifyObject** (`backend_courses_permissions_py_canmodifyobject`, Class, degree: 2)
- **.has_object_permission()** (`backend_courses_permissions_py_canmodifyobject_has_object_permission`, Method, degree: 1)
- **HasActiveSubscription** (`backend_courses_permissions_py_hasactivesubscription`, Class, degree: 2)
- **.has_permission()** (`backend_courses_permissions_py_hasactivesubscription_has_permission`, Method, degree: 1)
- **HasUniversityAccess** (`backend_courses_permissions_py_hasuniversityaccess`, Class, degree: 3)
- **.has_object_permission()** (`backend_courses_permissions_py_hasuniversityaccess_has_object_permission`, Method, degree: 1)
- **.has_permission()** (`backend_courses_permissions_py_hasuniversityaccess_has_permission`, Method, degree: 1)
- **rest_framework.permissions** (`backend_courses_permissions_py_import_rest_framework_permissions`, Module, degree: 1)
- **IsAdminOrReadOnly** (`backend_courses_permissions_py_isadminorreadonly`, Class, degree: 2)
- **.has_permission()** (`backend_courses_permissions_py_isadminorreadonly_has_permission`, Method, degree: 1)
- **IsOwnerOrReadOnly** (`backend_courses_permissions_py_isownerorreadonly`, Class, degree: 2)
- **.has_object_permission()** (`backend_courses_permissions_py_isownerorreadonly_has_object_permission`, Method, degree: 1)

## Relationships

- backend_courses_permissions_py → backend_courses_permissions_py_import_rest_framework_permissions (imports)
- backend_courses_permissions_py → backend_courses_permissions_py_isownerorreadonly (defines)
- backend_courses_permissions_py_isownerorreadonly → backend_courses_permissions_py_isownerorreadonly_has_object_permission (defines)
- backend_courses_permissions_py → backend_courses_permissions_py_cancreatesummary (defines)
- backend_courses_permissions_py_cancreatesummary → backend_courses_permissions_py_cancreatesummary_has_permission (defines)
- backend_courses_permissions_py → backend_courses_permissions_py_canaccesssummary (defines)
- backend_courses_permissions_py_canaccesssummary → backend_courses_permissions_py_canaccesssummary_has_permission (defines)
- backend_courses_permissions_py_canaccesssummary → backend_courses_permissions_py_canaccesssummary_has_object_permission (defines)
- backend_courses_permissions_py → backend_courses_permissions_py_isadminorreadonly (defines)
- backend_courses_permissions_py_isadminorreadonly → backend_courses_permissions_py_isadminorreadonly_has_permission (defines)
- backend_courses_permissions_py → backend_courses_permissions_py_canassignrole (defines)
- backend_courses_permissions_py_canassignrole → backend_courses_permissions_py_canassignrole_has_permission (defines)
- backend_courses_permissions_py → backend_courses_permissions_py_hasuniversityaccess (defines)
- backend_courses_permissions_py_hasuniversityaccess → backend_courses_permissions_py_hasuniversityaccess_has_permission (defines)
- backend_courses_permissions_py_hasuniversityaccess → backend_courses_permissions_py_hasuniversityaccess_has_object_permission (defines)
- backend_courses_permissions_py → backend_courses_permissions_py_canmodifyobject (defines)
- backend_courses_permissions_py_canmodifyobject → backend_courses_permissions_py_canmodifyobject_has_object_permission (defines)
- backend_courses_permissions_py → backend_courses_permissions_py_hasactivesubscription (defines)
- backend_courses_permissions_py_hasactivesubscription → backend_courses_permissions_py_hasactivesubscription_has_permission (defines)

