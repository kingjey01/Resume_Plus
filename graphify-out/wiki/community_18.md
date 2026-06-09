# Community 18: admin

**Members:** 19

## Nodes

- **admin** (`backend_courses_admin_py`, File, degree: 16)
- **CourseAdmin** (`backend_courses_admin_py_courseadmin`, Class, degree: 1)
- **ExerciseAttemptAdmin** (`backend_courses_admin_py_exerciseattemptadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_exerciseattemptadmin_get_queryset`, Method, degree: 2)
- **ExerciseQuestionAdmin** (`backend_courses_admin_py_exercisequestionadmin`, Class, degree: 3)
- **.get_queryset()** (`backend_courses_admin_py_exercisequestionadmin_get_queryset`, Method, degree: 2)
- **.question_text_short()** (`backend_courses_admin_py_exercisequestionadmin_question_text_short`, Method, degree: 1)
- **FiliereAdmin** (`backend_courses_admin_py_filiereadmin`, Class, degree: 1)
- **FilierePromotionAdmin** (`backend_courses_admin_py_filierepromotionadmin`, Class, degree: 1)
- **django.contrib.admin** (`backend_courses_admin_py_import_django_contrib_admin`, Module, degree: 1)
- **.models** (`backend_courses_admin_py_import_models`, Module, degree: 1)
- **PromotionAdmin** (`backend_courses_admin_py_promotionadmin`, Class, degree: 1)
- **SessionAdmin** (`backend_courses_admin_py_sessionadmin`, Class, degree: 1)
- **SummaryAdmin** (`backend_courses_admin_py_summaryadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_summaryadmin_get_queryset`, Method, degree: 2)
- **TranscriptionAdmin** (`backend_courses_admin_py_transcriptionadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_transcriptionadmin_get_queryset`, Method, degree: 2)
- **UniversiteAdmin** (`backend_courses_admin_py_universiteadmin`, Class, degree: 1)
- **UniversiteFiliereAdmin** (`backend_courses_admin_py_universitefiliereadmin`, Class, degree: 1)

## Relationships

- backend_courses_admin_py → backend_courses_admin_py_import_django_contrib_admin (imports)
- backend_courses_admin_py → backend_courses_admin_py_import_models (imports)
- backend_courses_admin_py → backend_courses_admin_py_courseadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_sessionadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_summaryadmin (defines)
- backend_courses_admin_py_summaryadmin → backend_courses_admin_py_summaryadmin_get_queryset (defines)
- backend_courses_admin_py → backend_courses_admin_py_universiteadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_promotionadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_filiereadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_universitefiliereadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_filierepromotionadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_transcriptionadmin (defines)
- backend_courses_admin_py_transcriptionadmin → backend_courses_admin_py_transcriptionadmin_get_queryset (defines)
- backend_courses_admin_py → backend_courses_admin_py_exercisequestionadmin (defines)
- backend_courses_admin_py_exercisequestionadmin → backend_courses_admin_py_exercisequestionadmin_question_text_short (defines)
- backend_courses_admin_py_exercisequestionadmin → backend_courses_admin_py_exercisequestionadmin_get_queryset (defines)
- backend_courses_admin_py → backend_courses_admin_py_exerciseattemptadmin (defines)
- backend_courses_admin_py_exerciseattemptadmin → backend_courses_admin_py_exerciseattemptadmin_get_queryset (defines)

