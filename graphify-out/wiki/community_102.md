# Community 102: simple_auth_test

**Members:** 9

## Nodes

- **simple_auth_test** (`backend_simple_auth_test_py`, File, degree: 8)
- **analyze_error_response()** (`backend_simple_auth_test_py_analyze_error_response`, Function, degree: 2)
- **json** (`backend_simple_auth_test_py_import_json`, Module, degree: 1)
- **requests** (`backend_simple_auth_test_py_import_requests`, Module, degree: 1)
- **main()** (`backend_simple_auth_test_py_main`, Function, degree: 6)
- **suggest_solutions()** (`backend_simple_auth_test_py_suggest_solutions`, Function, degree: 2)
- **test_auth_endpoint_without_token()** (`backend_simple_auth_test_py_test_auth_endpoint_without_token`, Function, degree: 2)
- **test_server_basic()** (`backend_simple_auth_test_py_test_server_basic`, Function, degree: 2)
- **test_token_with_different_methods()** (`backend_simple_auth_test_py_test_token_with_different_methods`, Function, degree: 2)

## Relationships

- backend_simple_auth_test_py → backend_simple_auth_test_py_import_requests (imports)
- backend_simple_auth_test_py → backend_simple_auth_test_py_import_json (imports)
- backend_simple_auth_test_py → backend_simple_auth_test_py_test_server_basic (defines)
- backend_simple_auth_test_py → backend_simple_auth_test_py_test_auth_endpoint_without_token (defines)
- backend_simple_auth_test_py → backend_simple_auth_test_py_test_token_with_different_methods (defines)
- backend_simple_auth_test_py → backend_simple_auth_test_py_analyze_error_response (defines)
- backend_simple_auth_test_py → backend_simple_auth_test_py_suggest_solutions (defines)
- backend_simple_auth_test_py → backend_simple_auth_test_py_main (defines)
- backend_simple_auth_test_py_main → backend_simple_auth_test_py_test_server_basic (calls)
- backend_simple_auth_test_py_main → backend_simple_auth_test_py_analyze_error_response (calls)
- backend_simple_auth_test_py_main → backend_simple_auth_test_py_test_auth_endpoint_without_token (calls)
- backend_simple_auth_test_py_main → backend_simple_auth_test_py_test_token_with_different_methods (calls)
- backend_simple_auth_test_py_main → backend_simple_auth_test_py_suggest_solutions (calls)

