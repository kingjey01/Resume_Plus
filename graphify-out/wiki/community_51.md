# Community 51: test_audio_upload

**Members:** 12

## Nodes

- **test_audio_upload** (`backend_test_audio_upload_py`, File, degree: 11)
- **create_fake_audio_file()** (`backend_test_audio_upload_py_create_fake_audio_file`, Function, degree: 2)
- **io** (`backend_test_audio_upload_py_import_io`, Module, degree: 1)
- **json** (`backend_test_audio_upload_py_import_json`, Module, degree: 1)
- **random** (`backend_test_audio_upload_py_import_random`, Module, degree: 1)
- **requests** (`backend_test_audio_upload_py_import_requests`, Module, degree: 1)
- **struct** (`backend_test_audio_upload_py_import_struct`, Module, degree: 1)
- **wave** (`backend_test_audio_upload_py_import_wave`, Module, degree: 1)
- **main()** (`backend_test_audio_upload_py_main`, Function, degree: 4)
- **test_audio_upload()** (`backend_test_audio_upload_py_test_audio_upload`, Function, degree: 3)
- **test_get_courses()** (`backend_test_audio_upload_py_test_get_courses`, Function, degree: 2)
- **test_get_sessions()** (`backend_test_audio_upload_py_test_get_sessions`, Function, degree: 2)

## Relationships

- backend_test_audio_upload_py → backend_test_audio_upload_py_import_requests (imports)
- backend_test_audio_upload_py → backend_test_audio_upload_py_import_json (imports)
- backend_test_audio_upload_py → backend_test_audio_upload_py_import_io (imports)
- backend_test_audio_upload_py → backend_test_audio_upload_py_import_wave (imports)
- backend_test_audio_upload_py → backend_test_audio_upload_py_import_struct (imports)
- backend_test_audio_upload_py → backend_test_audio_upload_py_import_random (imports)
- backend_test_audio_upload_py → backend_test_audio_upload_py_create_fake_audio_file (defines)
- backend_test_audio_upload_py → backend_test_audio_upload_py_test_get_courses (defines)
- backend_test_audio_upload_py → backend_test_audio_upload_py_test_audio_upload (defines)
- backend_test_audio_upload_py → backend_test_audio_upload_py_test_get_sessions (defines)
- backend_test_audio_upload_py → backend_test_audio_upload_py_main (defines)
- backend_test_audio_upload_py_test_audio_upload → backend_test_audio_upload_py_create_fake_audio_file (calls)
- backend_test_audio_upload_py_main → backend_test_audio_upload_py_test_audio_upload (calls)
- backend_test_audio_upload_py_main → backend_test_audio_upload_py_test_get_courses (calls)
- backend_test_audio_upload_py_main → backend_test_audio_upload_py_test_get_sessions (calls)

