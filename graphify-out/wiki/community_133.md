# Community 133: tasks

**Members:** 8

## Nodes

- **tasks** (`backend_courses_tasks_py`, File, degree: 7)
- **generate_summary_task()** (`backend_courses_tasks_py_generate_summary_task`, Function, degree: 1)
- **celery.shared_task** (`backend_courses_tasks_py_import_celery_shared_task`, Module, degree: 1)
- **django.utils.timezone** (`backend_courses_tasks_py_import_django_utils_timezone`, Module, degree: 1)
- **logging** (`backend_courses_tasks_py_import_logging`, Module, degree: 1)
- **process_audio_session_task()** (`backend_courses_tasks_py_process_audio_session_task`, Function, degree: 2)
- **transcribe_audio_task()** (`backend_courses_tasks_py_transcribe_audio_task`, Function, degree: 2)
- **_validate_and_fix_duration()** (`backend_courses_tasks_py_validate_and_fix_duration`, Function, degree: 3)

## Relationships

- backend_courses_tasks_py → backend_courses_tasks_py_import_logging (imports)
- backend_courses_tasks_py → backend_courses_tasks_py_import_celery_shared_task (imports)
- backend_courses_tasks_py → backend_courses_tasks_py_import_django_utils_timezone (imports)
- backend_courses_tasks_py → backend_courses_tasks_py_validate_and_fix_duration (defines)
- backend_courses_tasks_py → backend_courses_tasks_py_transcribe_audio_task (defines)
- backend_courses_tasks_py → backend_courses_tasks_py_generate_summary_task (defines)
- backend_courses_tasks_py → backend_courses_tasks_py_process_audio_session_task (defines)
- backend_courses_tasks_py_transcribe_audio_task → backend_courses_tasks_py_validate_and_fix_duration (calls)
- backend_courses_tasks_py_process_audio_session_task → backend_courses_tasks_py_validate_and_fix_duration (calls)

