# Community 164: main()

**Members:** 7

## Nodes

- **main()** (`backend_test_api_auth_py_main`, Function, degree: 6)
- **print_header()** (`backend_test_api_auth_py_print_header`, Function, degree: 2)
- **print_section()** (`backend_test_api_auth_py_print_section`, Function, degree: 5)
- **test_authenticated_endpoints()** (`backend_test_api_auth_py_test_authenticated_endpoints`, Function, degree: 3)
- **test_cors()** (`backend_test_api_auth_py_test_cors`, Function, degree: 3)
- **test_login()** (`backend_test_api_auth_py_test_login`, Function, degree: 3)
- **test_server_status()** (`backend_test_api_auth_py_test_server_status`, Function, degree: 3)

## Relationships

- backend_test_api_auth_py_test_server_status → backend_test_api_auth_py_print_section (calls)
- backend_test_api_auth_py_test_login → backend_test_api_auth_py_print_section (calls)
- backend_test_api_auth_py_test_authenticated_endpoints → backend_test_api_auth_py_print_section (calls)
- backend_test_api_auth_py_test_cors → backend_test_api_auth_py_print_section (calls)
- backend_test_api_auth_py_main → backend_test_api_auth_py_test_cors (calls)
- backend_test_api_auth_py_main → backend_test_api_auth_py_print_header (calls)
- backend_test_api_auth_py_main → backend_test_api_auth_py_test_login (calls)
- backend_test_api_auth_py_main → backend_test_api_auth_py_test_authenticated_endpoints (calls)
- backend_test_api_auth_py_main → backend_test_api_auth_py_test_server_status (calls)

