# Community 139: generate_report()

**Members:** 8

## Nodes

- **generate_report()** (`backend_diagnostic_complet_py_generate_report`, Function, degree: 3)
- **main()** (`backend_diagnostic_complet_py_main`, Function, degree: 7)
- **print_section()** (`backend_diagnostic_complet_py_print_section`, Function, degree: 7)
- **test_1_server_status()** (`backend_diagnostic_complet_py_test_1_server_status`, Function, degree: 3)
- **test_2_login()** (`backend_diagnostic_complet_py_test_2_login`, Function, degree: 3)
- **test_3_endpoints_without_auth()** (`backend_diagnostic_complet_py_test_3_endpoints_without_auth`, Function, degree: 3)
- **test_4_auth_endpoints()** (`backend_diagnostic_complet_py_test_4_auth_endpoints`, Function, degree: 3)
- **test_5_cors_headers()** (`backend_diagnostic_complet_py_test_5_cors_headers`, Function, degree: 3)

## Relationships

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

