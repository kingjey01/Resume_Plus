# Community 16: create_production_test_data

**Members:** 20

## Nodes

- **create_production_test_data** (`backend_create_production_test_data_py`, File, degree: 19)
- **create_ai_summary_for_session()** (`backend_create_production_test_data_py_create_ai_summary_for_session`, Function, degree: 2)
- **create_melodic_wav_file()** (`backend_create_production_test_data_py_create_melodic_wav_file`, Function, degree: 2)
- **create_production_audio_files()** (`backend_create_production_test_data_py_create_production_audio_files`, Function, degree: 4)
- **create_production_test_page()** (`backend_create_production_test_data_py_create_production_test_page`, Function, degree: 2)
- **courses.models.Course** (`backend_create_production_test_data_py_import_courses_models_course`, Module, degree: 1)
- **courses.models.Session** (`backend_create_production_test_data_py_import_courses_models_session`, Module, degree: 1)
- **courses.models.Summary** (`backend_create_production_test_data_py_import_courses_models_summary`, Module, degree: 1)
- **django** (`backend_create_production_test_data_py_import_django`, Module, degree: 1)
- **django.contrib.auth.models.User** (`backend_create_production_test_data_py_import_django_contrib_auth_models_user`, Module, degree: 1)
- **django.core.files.base.ContentFile** (`backend_create_production_test_data_py_import_django_core_files_base_contentfile`, Module, degree: 1)
- **django.utils.timezone** (`backend_create_production_test_data_py_import_django_utils_timezone`, Module, degree: 1)
- **math** (`backend_create_production_test_data_py_import_math`, Module, degree: 1)
- **os** (`backend_create_production_test_data_py_import_os`, Module, degree: 1)
- **pathlib.Path** (`backend_create_production_test_data_py_import_pathlib_path`, Module, degree: 1)
- **struct** (`backend_create_production_test_data_py_import_struct`, Module, degree: 1)
- **sys** (`backend_create_production_test_data_py_import_sys`, Module, degree: 1)
- **wave** (`backend_create_production_test_data_py_import_wave`, Module, degree: 1)
- **main()** (`backend_create_production_test_data_py_main`, Function, degree: 4)
- **verify_production_setup()** (`backend_create_production_test_data_py_verify_production_setup`, Function, degree: 2)

## Relationships

- backend_create_production_test_data_py → backend_create_production_test_data_py_import_os (imports)
- backend_create_production_test_data_py → backend_create_production_test_data_py_import_sys (imports)
- backend_create_production_test_data_py → backend_create_production_test_data_py_import_django (imports)
- backend_create_production_test_data_py → backend_create_production_test_data_py_import_pathlib_path (imports)
- backend_create_production_test_data_py → backend_create_production_test_data_py_import_wave (imports)
- backend_create_production_test_data_py → backend_create_production_test_data_py_import_struct (imports)
- backend_create_production_test_data_py → backend_create_production_test_data_py_import_math (imports)
- backend_create_production_test_data_py → backend_create_production_test_data_py_import_courses_models_session (imports)
- backend_create_production_test_data_py → backend_create_production_test_data_py_import_courses_models_course (imports)
- backend_create_production_test_data_py → backend_create_production_test_data_py_import_courses_models_summary (imports)
- backend_create_production_test_data_py → backend_create_production_test_data_py_import_django_core_files_base_contentfile (imports)
- backend_create_production_test_data_py → backend_create_production_test_data_py_import_django_contrib_auth_models_user (imports)
- backend_create_production_test_data_py → backend_create_production_test_data_py_import_django_utils_timezone (imports)
- backend_create_production_test_data_py → backend_create_production_test_data_py_create_production_audio_files (defines)
- backend_create_production_test_data_py → backend_create_production_test_data_py_create_melodic_wav_file (defines)
- backend_create_production_test_data_py → backend_create_production_test_data_py_create_ai_summary_for_session (defines)
- backend_create_production_test_data_py → backend_create_production_test_data_py_verify_production_setup (defines)
- backend_create_production_test_data_py → backend_create_production_test_data_py_create_production_test_page (defines)
- backend_create_production_test_data_py → backend_create_production_test_data_py_main (defines)
- backend_create_production_test_data_py_create_production_audio_files → backend_create_production_test_data_py_create_ai_summary_for_session (calls)
- backend_create_production_test_data_py_create_production_audio_files → backend_create_production_test_data_py_create_melodic_wav_file (calls)
- backend_create_production_test_data_py_main → backend_create_production_test_data_py_create_production_audio_files (calls)
- backend_create_production_test_data_py_main → backend_create_production_test_data_py_verify_production_setup (calls)
- backend_create_production_test_data_py_main → backend_create_production_test_data_py_create_production_test_page (calls)

