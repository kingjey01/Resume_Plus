# Community 47: ExerciseAdmin

**Members:** 13

## Nodes

- **ExerciseAdmin** (`backend_courses_admin_py_exerciseadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_exerciseadmin_get_queryset`, Method, degree: 2)
- **ExerciseQuestionAdmin** (`backend_courses_admin_py_exercisequestionadmin`, Class, degree: 3)
- **.get_queryset()** (`backend_courses_admin_py_exercisequestionadmin_get_queryset`, Method, degree: 2)
- **.question_text_short()** (`backend_courses_admin_py_exercisequestionadmin_question_text_short`, Method, degree: 1)
- **.get_queryset()** (`backend_courses_admin_py_professeuradmin_get_queryset`, Method, degree: 7)
- **ProfesseurFilieresAdmin** (`backend_courses_admin_py_professeurfilieresadmin`, Class, degree: 5)
- **.get_queryset()** (`backend_courses_admin_py_professeurfilieresadmin_get_queryset`, Method, degree: 2)
- **.has_add_permission()** (`backend_courses_admin_py_professeurfilieresadmin_has_add_permission`, Method, degree: 1)
- **.has_change_permission()** (`backend_courses_admin_py_professeurfilieresadmin_has_change_permission`, Method, degree: 1)
- **.has_delete_permission()** (`backend_courses_admin_py_professeurfilieresadmin_has_delete_permission`, Method, degree: 1)
- **SummaryAdmin** (`backend_courses_admin_py_summaryadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_summaryadmin_get_queryset`, Method, degree: 2)

## Relationships

- backend_courses_admin_py_summaryadmin → backend_courses_admin_py_summaryadmin_get_queryset (defines)
- backend_courses_admin_py_exerciseadmin → backend_courses_admin_py_exerciseadmin_get_queryset (defines)
- backend_courses_admin_py_exercisequestionadmin → backend_courses_admin_py_exercisequestionadmin_question_text_short (defines)
- backend_courses_admin_py_exercisequestionadmin → backend_courses_admin_py_exercisequestionadmin_get_queryset (defines)
- backend_courses_admin_py_professeurfilieresadmin → backend_courses_admin_py_professeurfilieresadmin_has_add_permission (defines)
- backend_courses_admin_py_professeurfilieresadmin → backend_courses_admin_py_professeurfilieresadmin_has_change_permission (defines)
- backend_courses_admin_py_professeurfilieresadmin → backend_courses_admin_py_professeurfilieresadmin_has_delete_permission (defines)
- backend_courses_admin_py_professeurfilieresadmin → backend_courses_admin_py_professeurfilieresadmin_get_queryset (defines)
- backend_courses_admin_py_summaryadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)
- backend_courses_admin_py_exerciseadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)
- backend_courses_admin_py_exercisequestionadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)
- backend_courses_admin_py_professeurfilieresadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)

