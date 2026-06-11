# Community 45: ExerciseAdmin

**Members:** 13

## Nodes

- **ExerciseAdmin** (`backend_courses_admin_py_exerciseadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_exerciseadmin_get_queryset`, Method, degree: 2)
- **ExerciseQuestionAdmin** (`backend_courses_admin_py_exercisequestionadmin`, Class, degree: 3)
- **.get_queryset()** (`backend_courses_admin_py_exercisequestionadmin_get_queryset`, Method, degree: 2)
- **.question_text_short()** (`backend_courses_admin_py_exercisequestionadmin_question_text_short`, Method, degree: 1)
- **FiliereAdmin** (`backend_courses_admin_py_filiereadmin`, Class, degree: 3)
- **.get_queryset()** (`backend_courses_admin_py_filiereadmin_get_queryset`, Method, degree: 2)
- **.list_promotions()** (`backend_courses_admin_py_filiereadmin_list_promotions`, Method, degree: 1)
- **ProfesseurAdmin** (`backend_courses_admin_py_professeuradmin`, Class, degree: 3)
- **.get_queryset()** (`backend_courses_admin_py_professeuradmin_get_queryset`, Method, degree: 8)
- **.list_filieres()** (`backend_courses_admin_py_professeuradmin_list_filieres`, Method, degree: 1)
- **SummaryAdmin** (`backend_courses_admin_py_summaryadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_summaryadmin_get_queryset`, Method, degree: 2)

## Relationships

- backend_courses_admin_py_summaryadmin → backend_courses_admin_py_summaryadmin_get_queryset (defines)
- backend_courses_admin_py_filiereadmin → backend_courses_admin_py_filiereadmin_list_promotions (defines)
- backend_courses_admin_py_filiereadmin → backend_courses_admin_py_filiereadmin_get_queryset (defines)
- backend_courses_admin_py_exerciseadmin → backend_courses_admin_py_exerciseadmin_get_queryset (defines)
- backend_courses_admin_py_exercisequestionadmin → backend_courses_admin_py_exercisequestionadmin_question_text_short (defines)
- backend_courses_admin_py_exercisequestionadmin → backend_courses_admin_py_exercisequestionadmin_get_queryset (defines)
- backend_courses_admin_py_professeuradmin → backend_courses_admin_py_professeuradmin_list_filieres (defines)
- backend_courses_admin_py_professeuradmin → backend_courses_admin_py_professeuradmin_get_queryset (defines)
- backend_courses_admin_py_summaryadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)
- backend_courses_admin_py_filiereadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)
- backend_courses_admin_py_exerciseadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)
- backend_courses_admin_py_exercisequestionadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)

