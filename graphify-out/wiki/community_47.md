# Community 47: test_advanced_audio_functionality

**Members:** 13

## Nodes

- **test_advanced_audio_functionality** (`backend_test_advanced_audio_functionality_py`, File, degree: 12)
- **create_comprehensive_test_report()** (`backend_test_advanced_audio_functionality_py_create_comprehensive_test_report`, Function, degree: 1)
- **create_test_audio_upload()** (`backend_test_advanced_audio_functionality_py_create_test_audio_upload`, Function, degree: 2)
- **json** (`backend_test_advanced_audio_functionality_py_import_json`, Module, degree: 1)
- **os** (`backend_test_advanced_audio_functionality_py_import_os`, Module, degree: 1)
- **pathlib.Path** (`backend_test_advanced_audio_functionality_py_import_pathlib_path`, Module, degree: 1)
- **requests** (`backend_test_advanced_audio_functionality_py_import_requests`, Module, degree: 1)
- **sys** (`backend_test_advanced_audio_functionality_py_import_sys`, Module, degree: 1)
- **wave** (`backend_test_advanced_audio_functionality_py_import_wave`, Module, degree: 1)
- **main()** (`backend_test_advanced_audio_functionality_py_main`, Function, degree: 5)
- **test_audio_files_existence()** (`backend_test_advanced_audio_functionality_py_test_audio_files_existence`, Function, degree: 3)
- **test_django_setup()** (`backend_test_advanced_audio_functionality_py_test_django_setup`, Function, degree: 3)
- **test_local_server_endpoints()** (`backend_test_advanced_audio_functionality_py_test_local_server_endpoints`, Function, degree: 2)

## Relationships

- backend_test_advanced_audio_functionality_py → backend_test_advanced_audio_functionality_py_import_os (imports)
- backend_test_advanced_audio_functionality_py → backend_test_advanced_audio_functionality_py_import_sys (imports)
- backend_test_advanced_audio_functionality_py → backend_test_advanced_audio_functionality_py_import_requests (imports)
- backend_test_advanced_audio_functionality_py → backend_test_advanced_audio_functionality_py_import_json (imports)
- backend_test_advanced_audio_functionality_py → backend_test_advanced_audio_functionality_py_import_wave (imports)
- backend_test_advanced_audio_functionality_py → backend_test_advanced_audio_functionality_py_import_pathlib_path (imports)
- backend_test_advanced_audio_functionality_py → backend_test_advanced_audio_functionality_py_test_django_setup (defines)
- backend_test_advanced_audio_functionality_py → backend_test_advanced_audio_functionality_py_test_audio_files_existence (defines)
- backend_test_advanced_audio_functionality_py → backend_test_advanced_audio_functionality_py_test_local_server_endpoints (defines)
- backend_test_advanced_audio_functionality_py → backend_test_advanced_audio_functionality_py_create_test_audio_upload (defines)
- backend_test_advanced_audio_functionality_py → backend_test_advanced_audio_functionality_py_create_comprehensive_test_report (defines)
- backend_test_advanced_audio_functionality_py → backend_test_advanced_audio_functionality_py_main (defines)
- backend_test_advanced_audio_functionality_py_test_audio_files_existence → backend_test_advanced_audio_functionality_py_test_django_setup (calls)
- backend_test_advanced_audio_functionality_py_main → backend_test_advanced_audio_functionality_py_test_django_setup (calls)
- backend_test_advanced_audio_functionality_py_main → backend_test_advanced_audio_functionality_py_create_test_audio_upload (calls)
- backend_test_advanced_audio_functionality_py_main → backend_test_advanced_audio_functionality_py_test_audio_files_existence (calls)
- backend_test_advanced_audio_functionality_py_main → backend_test_advanced_audio_functionality_py_test_local_server_endpoints (calls)

