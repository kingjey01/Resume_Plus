# Community 227: create_simple_audio_file()

**Members:** 5

## Nodes

- **create_simple_audio_file()** (`backend_test_simple_audio_upload_py_create_simple_audio_file`, Function, degree: 3)
- **main()** (`backend_test_simple_audio_upload_py_main`, Function, degree: 4)
- **test_audio_upload_direct()** (`backend_test_simple_audio_upload_py_test_audio_upload_direct`, Function, degree: 3)
- **test_simple_endpoints()** (`backend_test_simple_audio_upload_py_test_simple_endpoints`, Function, degree: 2)
- **test_with_different_course_ids()** (`backend_test_simple_audio_upload_py_test_with_different_course_ids`, Function, degree: 3)

## Relationships

- backend_test_simple_audio_upload_py_test_audio_upload_direct → backend_test_simple_audio_upload_py_create_simple_audio_file (calls)
- backend_test_simple_audio_upload_py_test_with_different_course_ids → backend_test_simple_audio_upload_py_create_simple_audio_file (calls)
- backend_test_simple_audio_upload_py_main → backend_test_simple_audio_upload_py_test_with_different_course_ids (calls)
- backend_test_simple_audio_upload_py_main → backend_test_simple_audio_upload_py_test_audio_upload_direct (calls)
- backend_test_simple_audio_upload_py_main → backend_test_simple_audio_upload_py_test_simple_endpoints (calls)

