# Community 103: debug_api_calls

**Members:** 9

## Nodes

- **debug_api_calls** (`backend_debug_api_calls_py`, File, degree: 8)
- **check_django_urls()** (`backend_debug_api_calls_py_check_django_urls`, Function, degree: 2)
- **generate_flutter_debug_code()** (`backend_debug_api_calls_py_generate_flutter_debug_code`, Function, degree: 2)
- **datetime** (`backend_debug_api_calls_py_import_datetime`, Module, degree: 1)
- **json** (`backend_debug_api_calls_py_import_json`, Module, degree: 1)
- **requests** (`backend_debug_api_calls_py_import_requests`, Module, degree: 1)
- **main()** (`backend_debug_api_calls_py_main`, Function, degree: 5)
- **simulate_flutter_calls()** (`backend_debug_api_calls_py_simulate_flutter_calls`, Function, degree: 2)
- **test_all_possible_urls()** (`backend_debug_api_calls_py_test_all_possible_urls`, Function, degree: 2)

## Relationships

- backend_debug_api_calls_py → backend_debug_api_calls_py_import_requests (imports)
- backend_debug_api_calls_py → backend_debug_api_calls_py_import_json (imports)
- backend_debug_api_calls_py → backend_debug_api_calls_py_import_datetime (imports)
- backend_debug_api_calls_py → backend_debug_api_calls_py_test_all_possible_urls (defines)
- backend_debug_api_calls_py → backend_debug_api_calls_py_simulate_flutter_calls (defines)
- backend_debug_api_calls_py → backend_debug_api_calls_py_check_django_urls (defines)
- backend_debug_api_calls_py → backend_debug_api_calls_py_generate_flutter_debug_code (defines)
- backend_debug_api_calls_py → backend_debug_api_calls_py_main (defines)
- backend_debug_api_calls_py_main → backend_debug_api_calls_py_simulate_flutter_calls (calls)
- backend_debug_api_calls_py_main → backend_debug_api_calls_py_check_django_urls (calls)
- backend_debug_api_calls_py_main → backend_debug_api_calls_py_test_all_possible_urls (calls)
- backend_debug_api_calls_py_main → backend_debug_api_calls_py_generate_flutter_debug_code (calls)

