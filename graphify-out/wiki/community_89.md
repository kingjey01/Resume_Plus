# Community 89: test_auth_quick

**Members:** 10

## Nodes

- **test_auth_quick** (`backend_test_auth_quick_py`, File, degree: 9)
- **check_server_status()** (`backend_test_auth_quick_py_check_server_status`, Function, degree: 2)
- **generate_curl_commands()** (`backend_test_auth_quick_py_generate_curl_commands`, Function, degree: 2)
- **json** (`backend_test_auth_quick_py_import_json`, Module, degree: 1)
- **requests** (`backend_test_auth_quick_py_import_requests`, Module, degree: 1)
- **time** (`backend_test_auth_quick_py_import_time`, Module, degree: 1)
- **main()** (`backend_test_auth_quick_py_main`, Function, degree: 6)
- **test_auth_endpoints_quick()** (`backend_test_auth_quick_py_test_auth_endpoints_quick`, Function, degree: 2)
- **test_cors_headers()** (`backend_test_auth_quick_py_test_cors_headers`, Function, degree: 2)
- **test_with_hardcoded_tokens()** (`backend_test_auth_quick_py_test_with_hardcoded_tokens`, Function, degree: 2)

## Relationships

- backend_test_auth_quick_py → backend_test_auth_quick_py_import_requests (imports)
- backend_test_auth_quick_py → backend_test_auth_quick_py_import_json (imports)
- backend_test_auth_quick_py → backend_test_auth_quick_py_import_time (imports)
- backend_test_auth_quick_py → backend_test_auth_quick_py_test_auth_endpoints_quick (defines)
- backend_test_auth_quick_py → backend_test_auth_quick_py_test_with_hardcoded_tokens (defines)
- backend_test_auth_quick_py → backend_test_auth_quick_py_test_cors_headers (defines)
- backend_test_auth_quick_py → backend_test_auth_quick_py_generate_curl_commands (defines)
- backend_test_auth_quick_py → backend_test_auth_quick_py_check_server_status (defines)
- backend_test_auth_quick_py → backend_test_auth_quick_py_main (defines)
- backend_test_auth_quick_py_main → backend_test_auth_quick_py_check_server_status (calls)
- backend_test_auth_quick_py_main → backend_test_auth_quick_py_generate_curl_commands (calls)
- backend_test_auth_quick_py_main → backend_test_auth_quick_py_test_with_hardcoded_tokens (calls)
- backend_test_auth_quick_py_main → backend_test_auth_quick_py_test_auth_endpoints_quick (calls)
- backend_test_auth_quick_py_main → backend_test_auth_quick_py_test_cors_headers (calls)

