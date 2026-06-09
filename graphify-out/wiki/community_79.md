# Community 79: test_registration

**Members:** 10

## Nodes

- **test_registration** (`backend_test_registration_py`, File, degree: 9)
- **generate_random_user()** (`backend_test_registration_py_generate_random_user`, Function, degree: 2)
- **json** (`backend_test_registration_py_import_json`, Module, degree: 1)
- **random** (`backend_test_registration_py_import_random`, Module, degree: 1)
- **requests** (`backend_test_registration_py_import_requests`, Module, degree: 1)
- **string** (`backend_test_registration_py_import_string`, Module, degree: 1)
- **main()** (`backend_test_registration_py_main`, Function, degree: 4)
- **test_api_with_jwt_token()** (`backend_test_registration_py_test_api_with_jwt_token`, Function, degree: 2)
- **test_login_with_new_user()** (`backend_test_registration_py_test_login_with_new_user`, Function, degree: 2)
- **test_registration()** (`backend_test_registration_py_test_registration`, Function, degree: 3)

## Relationships

- backend_test_registration_py → backend_test_registration_py_import_requests (imports)
- backend_test_registration_py → backend_test_registration_py_import_json (imports)
- backend_test_registration_py → backend_test_registration_py_import_random (imports)
- backend_test_registration_py → backend_test_registration_py_import_string (imports)
- backend_test_registration_py → backend_test_registration_py_generate_random_user (defines)
- backend_test_registration_py → backend_test_registration_py_test_registration (defines)
- backend_test_registration_py → backend_test_registration_py_test_login_with_new_user (defines)
- backend_test_registration_py → backend_test_registration_py_test_api_with_jwt_token (defines)
- backend_test_registration_py → backend_test_registration_py_main (defines)
- backend_test_registration_py_test_registration → backend_test_registration_py_generate_random_user (calls)
- backend_test_registration_py_main → backend_test_registration_py_test_login_with_new_user (calls)
- backend_test_registration_py_main → backend_test_registration_py_test_registration (calls)
- backend_test_registration_py_main → backend_test_registration_py_test_api_with_jwt_token (calls)

