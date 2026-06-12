# Community 135: test_production_api

**Members:** 8

## Nodes

- **test_production_api** (`backend_test_production_api_py`, File, degree: 7)
- **json** (`backend_test_production_api_py_import_json`, Module, degree: 1)
- **requests** (`backend_test_production_api_py_import_requests`, Module, degree: 1)
- **main()** (`backend_test_production_api_py_main`, Function, degree: 5)
- **test_audio_files_access()** (`backend_test_production_api_py_test_audio_files_access`, Function, degree: 2)
- **test_encoding_in_api_response()** (`backend_test_production_api_py_test_encoding_in_api_response`, Function, degree: 2)
- **test_flutter_api_simulation()** (`backend_test_production_api_py_test_flutter_api_simulation`, Function, degree: 2)
- **test_sessions_endpoint()** (`backend_test_production_api_py_test_sessions_endpoint`, Function, degree: 2)

## Relationships

- backend_test_production_api_py → backend_test_production_api_py_import_requests (imports)
- backend_test_production_api_py → backend_test_production_api_py_import_json (imports)
- backend_test_production_api_py → backend_test_production_api_py_test_sessions_endpoint (defines)
- backend_test_production_api_py → backend_test_production_api_py_test_audio_files_access (defines)
- backend_test_production_api_py → backend_test_production_api_py_test_flutter_api_simulation (defines)
- backend_test_production_api_py → backend_test_production_api_py_test_encoding_in_api_response (defines)
- backend_test_production_api_py → backend_test_production_api_py_main (defines)
- backend_test_production_api_py_main → backend_test_production_api_py_test_audio_files_access (calls)
- backend_test_production_api_py_main → backend_test_production_api_py_test_encoding_in_api_response (calls)
- backend_test_production_api_py_main → backend_test_production_api_py_test_flutter_api_simulation (calls)
- backend_test_production_api_py_main → backend_test_production_api_py_test_sessions_endpoint (calls)

