# Community 237: create_test_audio_upload()

**Members:** 5

## Nodes

- **create_test_audio_upload()** (`backend_test_advanced_audio_functionality_py_create_test_audio_upload`, Function, degree: 2)
- **main()** (`backend_test_advanced_audio_functionality_py_main`, Function, degree: 5)
- **test_audio_files_existence()** (`backend_test_advanced_audio_functionality_py_test_audio_files_existence`, Function, degree: 3)
- **test_django_setup()** (`backend_test_advanced_audio_functionality_py_test_django_setup`, Function, degree: 3)
- **test_local_server_endpoints()** (`backend_test_advanced_audio_functionality_py_test_local_server_endpoints`, Function, degree: 2)

## Relationships

- backend_test_advanced_audio_functionality_py_test_audio_files_existence → backend_test_advanced_audio_functionality_py_test_django_setup (calls)
- backend_test_advanced_audio_functionality_py_main → backend_test_advanced_audio_functionality_py_test_django_setup (calls)
- backend_test_advanced_audio_functionality_py_main → backend_test_advanced_audio_functionality_py_create_test_audio_upload (calls)
- backend_test_advanced_audio_functionality_py_main → backend_test_advanced_audio_functionality_py_test_audio_files_existence (calls)
- backend_test_advanced_audio_functionality_py_main → backend_test_advanced_audio_functionality_py_test_local_server_endpoints (calls)

