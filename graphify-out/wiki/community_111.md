# Community 111: debug_wsgi_user

**Members:** 9

## Nodes

- **debug_wsgi_user** (`backend_debug_wsgi_user_py`, File, degree: 8)
- **check_python_path()** (`backend_debug_wsgi_user_py_check_python_path`, Function, degree: 2)
- **django** (`backend_debug_wsgi_user_py_import_django`, Module, degree: 1)
- **os** (`backend_debug_wsgi_user_py_import_os`, Module, degree: 1)
- **sys** (`backend_debug_wsgi_user_py_import_sys`, Module, degree: 1)
- **main()** (`backend_debug_wsgi_user_py_main`, Function, degree: 5)
- **test_audio_processing_import()** (`backend_debug_wsgi_user_py_test_audio_processing_import`, Function, degree: 2)
- **test_imports()** (`backend_debug_wsgi_user_py_test_imports`, Function, degree: 2)
- **test_view_import()** (`backend_debug_wsgi_user_py_test_view_import`, Function, degree: 2)

## Relationships

- backend_debug_wsgi_user_py → backend_debug_wsgi_user_py_import_os (imports)
- backend_debug_wsgi_user_py → backend_debug_wsgi_user_py_import_sys (imports)
- backend_debug_wsgi_user_py → backend_debug_wsgi_user_py_import_django (imports)
- backend_debug_wsgi_user_py → backend_debug_wsgi_user_py_test_imports (defines)
- backend_debug_wsgi_user_py → backend_debug_wsgi_user_py_test_audio_processing_import (defines)
- backend_debug_wsgi_user_py → backend_debug_wsgi_user_py_test_view_import (defines)
- backend_debug_wsgi_user_py → backend_debug_wsgi_user_py_check_python_path (defines)
- backend_debug_wsgi_user_py → backend_debug_wsgi_user_py_main (defines)
- backend_debug_wsgi_user_py_main → backend_debug_wsgi_user_py_test_view_import (calls)
- backend_debug_wsgi_user_py_main → backend_debug_wsgi_user_py_test_imports (calls)
- backend_debug_wsgi_user_py_main → backend_debug_wsgi_user_py_check_python_path (calls)
- backend_debug_wsgi_user_py_main → backend_debug_wsgi_user_py_test_audio_processing_import (calls)

