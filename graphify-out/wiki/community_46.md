# Community 46: ExerciseQuestionAdmin

**Members:** 13

## Nodes

- **ExerciseQuestionAdmin** (`backend_courses_admin_py_exercisequestionadmin`, Class, degree: 3)
- **.get_queryset()** (`backend_courses_admin_py_exercisequestionadmin_get_queryset`, Method, degree: 2)
- **.question_text_short()** (`backend_courses_admin_py_exercisequestionadmin_question_text_short`, Method, degree: 1)
- **ProfesseurAdmin** (`backend_courses_admin_py_professeuradmin`, Class, degree: 3)
- **.get_queryset()** (`backend_courses_admin_py_professeuradmin_get_queryset`, Method, degree: 7)
- **.list_filieres()** (`backend_courses_admin_py_professeuradmin_list_filieres`, Method, degree: 1)
- **ProfesseurFilieresAdmin** (`backend_courses_admin_py_professeurfilieresadmin`, Class, degree: 5)
- **.get_queryset()** (`backend_courses_admin_py_professeurfilieresadmin_get_queryset`, Method, degree: 2)
- **.has_add_permission()** (`backend_courses_admin_py_professeurfilieresadmin_has_add_permission`, Method, degree: 1)
- **.has_change_permission()** (`backend_courses_admin_py_professeurfilieresadmin_has_change_permission`, Method, degree: 1)
- **.has_delete_permission()** (`backend_courses_admin_py_professeurfilieresadmin_has_delete_permission`, Method, degree: 1)
- **TranscriptionAdmin** (`backend_courses_admin_py_transcriptionadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_transcriptionadmin_get_queryset`, Method, degree: 2)

## Relationships

- backend_courses_admin_py_transcriptionadmin → backend_courses_admin_py_transcriptionadmin_get_queryset (defines)
- backend_courses_admin_py_exercisequestionadmin → backend_courses_admin_py_exercisequestionadmin_question_text_short (defines)
- backend_courses_admin_py_exercisequestionadmin → backend_courses_admin_py_exercisequestionadmin_get_queryset (defines)
- backend_courses_admin_py_professeurfilieresadmin → backend_courses_admin_py_professeurfilieresadmin_has_add_permission (defines)
- backend_courses_admin_py_professeurfilieresadmin → backend_courses_admin_py_professeurfilieresadmin_has_change_permission (defines)
- backend_courses_admin_py_professeurfilieresadmin → backend_courses_admin_py_professeurfilieresadmin_has_delete_permission (defines)
- backend_courses_admin_py_professeurfilieresadmin → backend_courses_admin_py_professeurfilieresadmin_get_queryset (defines)
- backend_courses_admin_py_professeuradmin → backend_courses_admin_py_professeuradmin_list_filieres (defines)
- backend_courses_admin_py_professeuradmin → backend_courses_admin_py_professeuradmin_get_queryset (defines)
- backend_courses_admin_py_transcriptionadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)
- backend_courses_admin_py_exercisequestionadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)
- backend_courses_admin_py_professeurfilieresadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)

