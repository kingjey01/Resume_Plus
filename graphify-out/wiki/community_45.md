# Community 45: diagnostic_complet

**Members:** 13

## Nodes

- **diagnostic_complet** (`backend_diagnostic_complet_py`, File, degree: 12)
- **generate_report()** (`backend_diagnostic_complet_py_generate_report`, Function, degree: 3)
- **datetime** (`backend_diagnostic_complet_py_import_datetime`, Module, degree: 1)
- **json** (`backend_diagnostic_complet_py_import_json`, Module, degree: 1)
- **jwt** (`backend_diagnostic_complet_py_import_jwt`, Module, degree: 1)
- **requests** (`backend_diagnostic_complet_py_import_requests`, Module, degree: 1)
- **main()** (`backend_diagnostic_complet_py_main`, Function, degree: 7)
- **print_section()** (`backend_diagnostic_complet_py_print_section`, Function, degree: 7)
- **test_1_server_status()** (`backend_diagnostic_complet_py_test_1_server_status`, Function, degree: 3)
- **test_2_login()** (`backend_diagnostic_complet_py_test_2_login`, Function, degree: 3)
- **test_3_endpoints_without_auth()** (`backend_diagnostic_complet_py_test_3_endpoints_without_auth`, Function, degree: 3)
- **test_4_auth_endpoints()** (`backend_diagnostic_complet_py_test_4_auth_endpoints`, Function, degree: 3)
- **test_5_cors_headers()** (`backend_diagnostic_complet_py_test_5_cors_headers`, Function, degree: 3)

## Relationships

- backend_diagnostic_complet_py → backend_diagnostic_complet_py_import_requests (imports)
- backend_diagnostic_complet_py → backend_diagnostic_complet_py_import_json (imports)
- backend_diagnostic_complet_py → backend_diagnostic_complet_py_import_jwt (imports)
- backend_diagnostic_complet_py → backend_diagnostic_complet_py_import_datetime (imports)
- backend_diagnostic_complet_py → backend_diagnostic_complet_py_print_section (defines)
- backend_diagnostic_complet_py → backend_diagnostic_complet_py_test_1_server_status (defines)
- backend_diagnostic_complet_py → backend_diagnostic_complet_py_test_2_login (defines)
- backend_diagnostic_complet_py → backend_diagnostic_complet_py_test_3_endpoints_without_auth (defines)
- backend_diagnostic_complet_py → backend_diagnostic_complet_py_test_4_auth_endpoints (defines)
- backend_diagnostic_complet_py → backend_diagnostic_complet_py_test_5_cors_headers (defines)
- backend_diagnostic_complet_py → backend_diagnostic_complet_py_generate_report (defines)
- backend_diagnostic_complet_py → backend_diagnostic_complet_py_main (defines)
- backend_diagnostic_complet_py_test_1_server_status → backend_diagnostic_complet_py_print_section (calls)
- backend_diagnostic_complet_py_test_2_login → backend_diagnostic_complet_py_print_section (calls)
- backend_diagnostic_complet_py_test_3_endpoints_without_auth → backend_diagnostic_complet_py_print_section (calls)
- backend_diagnostic_complet_py_test_4_auth_endpoints → backend_diagnostic_complet_py_print_section (calls)
- backend_diagnostic_complet_py_test_5_cors_headers → backend_diagnostic_complet_py_print_section (calls)
- backend_diagnostic_complet_py_generate_report → backend_diagnostic_complet_py_print_section (calls)
- backend_diagnostic_complet_py_main → backend_diagnostic_complet_py_test_4_auth_endpoints (calls)
- backend_diagnostic_complet_py_main → backend_diagnostic_complet_py_test_2_login (calls)
- backend_diagnostic_complet_py_main → backend_diagnostic_complet_py_test_5_cors_headers (calls)
- backend_diagnostic_complet_py_main → backend_diagnostic_complet_py_generate_report (calls)
- backend_diagnostic_complet_py_main → backend_diagnostic_complet_py_test_1_server_status (calls)
- backend_diagnostic_complet_py_main → backend_diagnostic_complet_py_test_3_endpoints_without_auth (calls)

