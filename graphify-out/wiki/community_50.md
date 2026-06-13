# Community 50: test_simple_audio_upload

**Members:** 12

## Nodes

- **test_simple_audio_upload** (`backend_test_simple_audio_upload_py`, File, degree: 11)
- **create_simple_audio_file()** (`backend_test_simple_audio_upload_py_create_simple_audio_file`, Function, degree: 3)
- **io** (`backend_test_simple_audio_upload_py_import_io`, Module, degree: 1)
- **json** (`backend_test_simple_audio_upload_py_import_json`, Module, degree: 1)
- **random** (`backend_test_simple_audio_upload_py_import_random`, Module, degree: 1)
- **requests** (`backend_test_simple_audio_upload_py_import_requests`, Module, degree: 1)
- **struct** (`backend_test_simple_audio_upload_py_import_struct`, Module, degree: 1)
- **wave** (`backend_test_simple_audio_upload_py_import_wave`, Module, degree: 1)
- **main()** (`backend_test_simple_audio_upload_py_main`, Function, degree: 4)
- **test_audio_upload_direct()** (`backend_test_simple_audio_upload_py_test_audio_upload_direct`, Function, degree: 3)
- **test_simple_endpoints()** (`backend_test_simple_audio_upload_py_test_simple_endpoints`, Function, degree: 2)
- **test_with_different_course_ids()** (`backend_test_simple_audio_upload_py_test_with_different_course_ids`, Function, degree: 3)

## Relationships

- backend_test_simple_audio_upload_py → backend_test_simple_audio_upload_py_import_requests (imports)
- backend_test_simple_audio_upload_py → backend_test_simple_audio_upload_py_import_json (imports)
- backend_test_simple_audio_upload_py → backend_test_simple_audio_upload_py_import_io (imports)
- backend_test_simple_audio_upload_py → backend_test_simple_audio_upload_py_import_wave (imports)
- backend_test_simple_audio_upload_py → backend_test_simple_audio_upload_py_import_struct (imports)
- backend_test_simple_audio_upload_py → backend_test_simple_audio_upload_py_import_random (imports)
- backend_test_simple_audio_upload_py → backend_test_simple_audio_upload_py_create_simple_audio_file (defines)
- backend_test_simple_audio_upload_py → backend_test_simple_audio_upload_py_test_simple_endpoints (defines)
- backend_test_simple_audio_upload_py → backend_test_simple_audio_upload_py_test_audio_upload_direct (defines)
- backend_test_simple_audio_upload_py → backend_test_simple_audio_upload_py_test_with_different_course_ids (defines)
- backend_test_simple_audio_upload_py → backend_test_simple_audio_upload_py_main (defines)
- backend_test_simple_audio_upload_py_test_audio_upload_direct → backend_test_simple_audio_upload_py_create_simple_audio_file (calls)
- backend_test_simple_audio_upload_py_test_with_different_course_ids → backend_test_simple_audio_upload_py_create_simple_audio_file (calls)
- backend_test_simple_audio_upload_py_main → backend_test_simple_audio_upload_py_test_with_different_course_ids (calls)
- backend_test_simple_audio_upload_py_main → backend_test_simple_audio_upload_py_test_audio_upload_direct (calls)
- backend_test_simple_audio_upload_py_main → backend_test_simple_audio_upload_py_test_simple_endpoints (calls)

