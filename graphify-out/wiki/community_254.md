# Community 254: test_api_only

**Members:** 5

## Nodes

- **test_api_only** (`backend_test_api_only_py`, File, degree: 4)
- **json** (`backend_test_api_only_py_import_json`, Module, degree: 1)
- **requests** (`backend_test_api_only_py_import_requests`, Module, degree: 1)
- **main()** (`backend_test_api_only_py_main`, Function, degree: 2)
- **test_endpoint()** (`backend_test_api_only_py_test_endpoint`, Function, degree: 2)

## Relationships

- backend_test_api_only_py → backend_test_api_only_py_import_requests (imports)
- backend_test_api_only_py → backend_test_api_only_py_import_json (imports)
- backend_test_api_only_py → backend_test_api_only_py_test_endpoint (defines)
- backend_test_api_only_py → backend_test_api_only_py_main (defines)
- backend_test_api_only_py_main → backend_test_api_only_py_test_endpoint (calls)

