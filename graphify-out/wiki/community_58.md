# Community 58: debug_audio_issues

**Members:** 12

## Nodes

- **debug_audio_issues** (`backend_debug_audio_issues_py`, File, degree: 11)
- **check_database_audio_files()** (`backend_debug_audio_issues_py_check_database_audio_files`, Function, degree: 2)
- **check_media_directory()** (`backend_debug_audio_issues_py_check_media_directory`, Function, degree: 2)
- **create_test_audio_files()** (`backend_debug_audio_issues_py_create_test_audio_files`, Function, degree: 2)
- **os** (`backend_debug_audio_issues_py_import_os`, Module, degree: 1)
- **pathlib.Path** (`backend_debug_audio_issues_py_import_pathlib_path`, Module, degree: 1)
- **pymysql** (`backend_debug_audio_issues_py_import_pymysql`, Module, degree: 1)
- **requests** (`backend_debug_audio_issues_py_import_requests`, Module, degree: 1)
- **sys** (`backend_debug_audio_issues_py_import_sys`, Module, degree: 1)
- **main()** (`backend_debug_audio_issues_py_main`, Function, degree: 6)
- **test_api_endpoints()** (`backend_debug_audio_issues_py_test_api_endpoints`, Function, degree: 2)
- **test_specific_audio_file()** (`backend_debug_audio_issues_py_test_specific_audio_file`, Function, degree: 2)

## Relationships

- backend_debug_audio_issues_py → backend_debug_audio_issues_py_import_os (imports)
- backend_debug_audio_issues_py → backend_debug_audio_issues_py_import_sys (imports)
- backend_debug_audio_issues_py → backend_debug_audio_issues_py_import_pymysql (imports)
- backend_debug_audio_issues_py → backend_debug_audio_issues_py_import_pathlib_path (imports)
- backend_debug_audio_issues_py → backend_debug_audio_issues_py_import_requests (imports)
- backend_debug_audio_issues_py → backend_debug_audio_issues_py_check_database_audio_files (defines)
- backend_debug_audio_issues_py → backend_debug_audio_issues_py_check_media_directory (defines)
- backend_debug_audio_issues_py → backend_debug_audio_issues_py_test_api_endpoints (defines)
- backend_debug_audio_issues_py → backend_debug_audio_issues_py_create_test_audio_files (defines)
- backend_debug_audio_issues_py → backend_debug_audio_issues_py_test_specific_audio_file (defines)
- backend_debug_audio_issues_py → backend_debug_audio_issues_py_main (defines)
- backend_debug_audio_issues_py_main → backend_debug_audio_issues_py_test_api_endpoints (calls)
- backend_debug_audio_issues_py_main → backend_debug_audio_issues_py_check_media_directory (calls)
- backend_debug_audio_issues_py_main → backend_debug_audio_issues_py_create_test_audio_files (calls)
- backend_debug_audio_issues_py_main → backend_debug_audio_issues_py_check_database_audio_files (calls)
- backend_debug_audio_issues_py_main → backend_debug_audio_issues_py_test_specific_audio_file (calls)

