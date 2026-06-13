# Community 66: ExerciseAdmin

**Members:** 11

## Nodes

- **ExerciseAdmin** (`backend_courses_admin_py_exerciseadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_exerciseadmin_get_queryset`, Method, degree: 2)
- **ExerciseQuestionAdmin** (`backend_courses_admin_py_exercisequestionadmin`, Class, degree: 3)
- **.get_queryset()** (`backend_courses_admin_py_exercisequestionadmin_get_queryset`, Method, degree: 2)
- **.question_text_short()** (`backend_courses_admin_py_exercisequestionadmin_question_text_short`, Method, degree: 1)
- **.get_queryset()** (`backend_courses_admin_py_professeuradmin_get_queryset`, Method, degree: 7)
- **.get_queryset()** (`backend_courses_admin_py_professeurfilieresadmin_get_queryset`, Method, degree: 2)
- **SummaryAdmin** (`backend_courses_admin_py_summaryadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_summaryadmin_get_queryset`, Method, degree: 2)
- **TranscriptionAdmin** (`backend_courses_admin_py_transcriptionadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_transcriptionadmin_get_queryset`, Method, degree: 2)

## Relationships

- backend_courses_admin_py_summaryadmin → backend_courses_admin_py_summaryadmin_get_queryset (defines)
- backend_courses_admin_py_transcriptionadmin → backend_courses_admin_py_transcriptionadmin_get_queryset (defines)
- backend_courses_admin_py_exerciseadmin → backend_courses_admin_py_exerciseadmin_get_queryset (defines)
- backend_courses_admin_py_exercisequestionadmin → backend_courses_admin_py_exercisequestionadmin_question_text_short (defines)
- backend_courses_admin_py_exercisequestionadmin → backend_courses_admin_py_exercisequestionadmin_get_queryset (defines)
- backend_courses_admin_py_summaryadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)
- backend_courses_admin_py_transcriptionadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)
- backend_courses_admin_py_exerciseadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)
- backend_courses_admin_py_exercisequestionadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)
- backend_courses_admin_py_professeurfilieresadmin_get_queryset → backend_courses_admin_py_professeuradmin_get_queryset (calls)

