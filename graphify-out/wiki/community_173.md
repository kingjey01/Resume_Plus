# Community 173: ExerciseAttemptAdmin

**Members:** 7

## Nodes

- **ExerciseAttemptAdmin** (`backend_courses_admin_py_exerciseattemptadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_exerciseattemptadmin_get_queryset`, Method, degree: 2)
- **ProfesseurAdmin** (`backend_courses_admin_py_professeuradmin`, Class, degree: 3)
- **.get_queryset()** (`backend_courses_admin_py_professeuradmin_get_queryset`, Method, degree: 7)
- **.list_filieres()** (`backend_courses_admin_py_professeuradmin_list_filieres`, Method, degree: 1)
- **SummaryAdmin** (`backend_courses_admin_py_summaryadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_summaryadmin_get_queryset`, Method, degree: 2)

## Relationships

- backend_courses_admin_py_summaryadmin → backend_courses_admin_py_summaryadmin_get_queryset (defines)
- backend_courses_admin_py_exerciseattemptadmin → backend_courses_admin_py_exerciseattemptadmin_get_queryset (defines)
- backend_courses_admin_py_professeuradmin → backend_courses_admin_py_professeuradmin_list_filieres (defines)
- backend_courses_admin_py_professeuradmin → backend_courses_admin_py_professeuradmin_get_queryset (defines)
- backend_courses_admin_py_summaryadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)
- backend_courses_admin_py_exerciseattemptadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)

