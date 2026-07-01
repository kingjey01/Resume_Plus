# Community 75: test_mobile_simulation

**Members:** 10

## Nodes

- **test_mobile_simulation** (`backend_test_mobile_simulation_py`, File, degree: 9)
- **json** (`backend_test_mobile_simulation_py_import_json`, Module, degree: 1)
- **requests** (`backend_test_mobile_simulation_py_import_requests`, Module, degree: 1)
- **time** (`backend_test_mobile_simulation_py_import_time`, Module, degree: 1)
- **login_user()** (`backend_test_mobile_simulation_py_login_user`, Function, degree: 3)
- **main()** (`backend_test_mobile_simulation_py_main`, Function, degree: 5)
- **print_header()** (`backend_test_mobile_simulation_py_print_header`, Function, degree: 2)
- **print_step()** (`backend_test_mobile_simulation_py_print_step`, Function, degree: 4)
- **test_summaries()** (`backend_test_mobile_simulation_py_test_summaries`, Function, degree: 3)
- **test_user_info()** (`backend_test_mobile_simulation_py_test_user_info`, Function, degree: 3)

## Relationships

- backend_test_mobile_simulation_py → backend_test_mobile_simulation_py_import_requests (imports)
- backend_test_mobile_simulation_py → backend_test_mobile_simulation_py_import_json (imports)
- backend_test_mobile_simulation_py → backend_test_mobile_simulation_py_import_time (imports)
- backend_test_mobile_simulation_py → backend_test_mobile_simulation_py_print_header (defines)
- backend_test_mobile_simulation_py → backend_test_mobile_simulation_py_print_step (defines)
- backend_test_mobile_simulation_py → backend_test_mobile_simulation_py_login_user (defines)
- backend_test_mobile_simulation_py → backend_test_mobile_simulation_py_test_user_info (defines)
- backend_test_mobile_simulation_py → backend_test_mobile_simulation_py_test_summaries (defines)
- backend_test_mobile_simulation_py → backend_test_mobile_simulation_py_main (defines)
- backend_test_mobile_simulation_py_login_user → backend_test_mobile_simulation_py_print_step (calls)
- backend_test_mobile_simulation_py_test_user_info → backend_test_mobile_simulation_py_print_step (calls)
- backend_test_mobile_simulation_py_test_summaries → backend_test_mobile_simulation_py_print_step (calls)
- backend_test_mobile_simulation_py_main → backend_test_mobile_simulation_py_test_summaries (calls)
- backend_test_mobile_simulation_py_main → backend_test_mobile_simulation_py_login_user (calls)
- backend_test_mobile_simulation_py_main → backend_test_mobile_simulation_py_print_header (calls)
- backend_test_mobile_simulation_py_main → backend_test_mobile_simulation_py_test_user_info (calls)

