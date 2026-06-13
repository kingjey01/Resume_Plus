# Community 57: test_api_auth

**Members:** 12

## Nodes

- **test_api_auth** (`backend_test_api_auth_py`, File, degree: 11)
- **json** (`backend_test_api_auth_py_import_json`, Module, degree: 1)
- **os** (`backend_test_api_auth_py_import_os`, Module, degree: 1)
- **requests** (`backend_test_api_auth_py_import_requests`, Module, degree: 1)
- **sys** (`backend_test_api_auth_py_import_sys`, Module, degree: 1)
- **main()** (`backend_test_api_auth_py_main`, Function, degree: 6)
- **print_header()** (`backend_test_api_auth_py_print_header`, Function, degree: 2)
- **print_section()** (`backend_test_api_auth_py_print_section`, Function, degree: 5)
- **test_authenticated_endpoints()** (`backend_test_api_auth_py_test_authenticated_endpoints`, Function, degree: 3)
- **test_cors()** (`backend_test_api_auth_py_test_cors`, Function, degree: 3)
- **test_login()** (`backend_test_api_auth_py_test_login`, Function, degree: 3)
- **test_server_status()** (`backend_test_api_auth_py_test_server_status`, Function, degree: 3)

## Relationships

- backend_test_api_auth_py → backend_test_api_auth_py_import_requests (imports)
- backend_test_api_auth_py → backend_test_api_auth_py_import_json (imports)
- backend_test_api_auth_py → backend_test_api_auth_py_import_os (imports)
- backend_test_api_auth_py → backend_test_api_auth_py_import_sys (imports)
- backend_test_api_auth_py → backend_test_api_auth_py_print_header (defines)
- backend_test_api_auth_py → backend_test_api_auth_py_print_section (defines)
- backend_test_api_auth_py → backend_test_api_auth_py_test_server_status (defines)
- backend_test_api_auth_py → backend_test_api_auth_py_test_login (defines)
- backend_test_api_auth_py → backend_test_api_auth_py_test_authenticated_endpoints (defines)
- backend_test_api_auth_py → backend_test_api_auth_py_test_cors (defines)
- backend_test_api_auth_py → backend_test_api_auth_py_main (defines)
- backend_test_api_auth_py_test_server_status → backend_test_api_auth_py_print_section (calls)
- backend_test_api_auth_py_test_login → backend_test_api_auth_py_print_section (calls)
- backend_test_api_auth_py_test_authenticated_endpoints → backend_test_api_auth_py_print_section (calls)
- backend_test_api_auth_py_test_cors → backend_test_api_auth_py_print_section (calls)
- backend_test_api_auth_py_main → backend_test_api_auth_py_test_cors (calls)
- backend_test_api_auth_py_main → backend_test_api_auth_py_print_header (calls)
- backend_test_api_auth_py_main → backend_test_api_auth_py_test_login (calls)
- backend_test_api_auth_py_main → backend_test_api_auth_py_test_authenticated_endpoints (calls)
- backend_test_api_auth_py_main → backend_test_api_auth_py_test_server_status (calls)

