# Community 105: ExerciseAdmin

**Members:** 9

## Nodes

- **ExerciseAdmin** (`backend_courses_admin_py_exerciseadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_exerciseadmin_get_queryset`, Method, degree: 2)
- **ExerciseAttemptAdmin** (`backend_courses_admin_py_exerciseattemptadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_exerciseattemptadmin_get_queryset`, Method, degree: 2)
- **ProfesseurAdmin** (`backend_courses_admin_py_professeuradmin`, Class, degree: 3)
- **.get_queryset()** (`backend_courses_admin_py_professeuradmin_get_queryset`, Method, degree: 7)
- **.list_filieres()** (`backend_courses_admin_py_professeuradmin_list_filieres`, Method, degree: 1)
- **TranscriptionAdmin** (`backend_courses_admin_py_transcriptionadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_transcriptionadmin_get_queryset`, Method, degree: 2)

## Relationships

- backend_courses_admin_py_transcriptionadmin → backend_courses_admin_py_transcriptionadmin_get_queryset (defines)
- backend_courses_admin_py_exerciseadmin → backend_courses_admin_py_exerciseadmin_get_queryset (defines)
- backend_courses_admin_py_exerciseattemptadmin → backend_courses_admin_py_exerciseattemptadmin_get_queryset (defines)
- backend_courses_admin_py_professeuradmin → backend_courses_admin_py_professeuradmin_list_filieres (defines)
- backend_courses_admin_py_professeuradmin → backend_courses_admin_py_professeuradmin_get_queryset (defines)
- backend_courses_admin_py_transcriptionadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)
- backend_courses_admin_py_exerciseadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)
- backend_courses_admin_py_exerciseattemptadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)

