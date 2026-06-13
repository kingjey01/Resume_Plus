# Community 81: test_production_audio

**Members:** 10

## Nodes

- **test_production_audio** (`backend_test_production_audio_py`, File, degree: 9)
- **generate_production_test_report()** (`backend_test_production_audio_py_generate_production_test_report`, Function, degree: 5)
- **datetime** (`backend_test_production_audio_py_import_datetime`, Module, degree: 1)
- **json** (`backend_test_production_audio_py_import_json`, Module, degree: 1)
- **requests** (`backend_test_production_audio_py_import_requests`, Module, degree: 1)
- **time** (`backend_test_production_audio_py_import_time`, Module, degree: 1)
- **main()** (`backend_test_production_audio_py_main`, Function, degree: 2)
- **test_media_directory_access()** (`backend_test_production_audio_py_test_media_directory_access`, Function, degree: 2)
- **test_production_endpoints()** (`backend_test_production_audio_py_test_production_endpoints`, Function, degree: 2)
- **test_specific_audio_sessions()** (`backend_test_production_audio_py_test_specific_audio_sessions`, Function, degree: 2)

## Relationships

- backend_test_production_audio_py → backend_test_production_audio_py_import_requests (imports)
- backend_test_production_audio_py → backend_test_production_audio_py_import_json (imports)
- backend_test_production_audio_py → backend_test_production_audio_py_import_time (imports)
- backend_test_production_audio_py → backend_test_production_audio_py_import_datetime (imports)
- backend_test_production_audio_py → backend_test_production_audio_py_test_production_endpoints (defines)
- backend_test_production_audio_py → backend_test_production_audio_py_test_specific_audio_sessions (defines)
- backend_test_production_audio_py → backend_test_production_audio_py_test_media_directory_access (defines)
- backend_test_production_audio_py → backend_test_production_audio_py_generate_production_test_report (defines)
- backend_test_production_audio_py → backend_test_production_audio_py_main (defines)
- backend_test_production_audio_py_generate_production_test_report → backend_test_production_audio_py_test_production_endpoints (calls)
- backend_test_production_audio_py_generate_production_test_report → backend_test_production_audio_py_test_media_directory_access (calls)
- backend_test_production_audio_py_generate_production_test_report → backend_test_production_audio_py_test_specific_audio_sessions (calls)
- backend_test_production_audio_py_main → backend_test_production_audio_py_generate_production_test_report (calls)

