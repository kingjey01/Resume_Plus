# Community 18: admin

**Members:** 19

## Nodes

- **admin** (`backend_courses_admin_py`, File, degree: 16)
- **CourseAdmin** (`backend_courses_admin_py_courseadmin`, Class, degree: 4)
- **.get_filieres()** (`backend_courses_admin_py_courseadmin_get_filieres`, Method, degree: 1)
- **.get_promotions()** (`backend_courses_admin_py_courseadmin_get_promotions`, Method, degree: 1)
- **.get_universites()** (`backend_courses_admin_py_courseadmin_get_universites`, Method, degree: 1)
- **ExerciseAdmin** (`backend_courses_admin_py_exerciseadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_exerciseadmin_get_queryset`, Method, degree: 2)
- **ExerciseAttemptAdmin** (`backend_courses_admin_py_exerciseattemptadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_exerciseattemptadmin_get_queryset`, Method, degree: 2)
- **FiliereAdmin** (`backend_courses_admin_py_filiereadmin`, Class, degree: 1)
- **FilierePromotionAdmin** (`backend_courses_admin_py_filierepromotionadmin`, Class, degree: 1)
- **django.contrib.admin** (`backend_courses_admin_py_import_django_contrib_admin`, Module, degree: 1)
- **.models** (`backend_courses_admin_py_import_models`, Module, degree: 1)
- **PromotionAdmin** (`backend_courses_admin_py_promotionadmin`, Class, degree: 1)
- **SessionAdmin** (`backend_courses_admin_py_sessionadmin`, Class, degree: 1)
- **SummaryAdmin** (`backend_courses_admin_py_summaryadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_summaryadmin_get_queryset`, Method, degree: 2)
- **UniversiteAdmin** (`backend_courses_admin_py_universiteadmin`, Class, degree: 1)
- **UniversiteFiliereAdmin** (`backend_courses_admin_py_universitefiliereadmin`, Class, degree: 1)

## Relationships

- backend_courses_admin_py → backend_courses_admin_py_import_django_contrib_admin (imports)
- backend_courses_admin_py → backend_courses_admin_py_import_models (imports)
- backend_courses_admin_py → backend_courses_admin_py_courseadmin (defines)
- backend_courses_admin_py_courseadmin → backend_courses_admin_py_courseadmin_get_universites (defines)
- backend_courses_admin_py_courseadmin → backend_courses_admin_py_courseadmin_get_filieres (defines)
- backend_courses_admin_py_courseadmin → backend_courses_admin_py_courseadmin_get_promotions (defines)
- backend_courses_admin_py → backend_courses_admin_py_sessionadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_summaryadmin (defines)
- backend_courses_admin_py_summaryadmin → backend_courses_admin_py_summaryadmin_get_queryset (defines)
- backend_courses_admin_py → backend_courses_admin_py_universiteadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_promotionadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_filiereadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_universitefiliereadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_filierepromotionadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_exerciseadmin (defines)
- backend_courses_admin_py_exerciseadmin → backend_courses_admin_py_exerciseadmin_get_queryset (defines)
- backend_courses_admin_py → backend_courses_admin_py_exerciseattemptadmin (defines)
- backend_courses_admin_py_exerciseattemptadmin → backend_courses_admin_py_exerciseattemptadmin_get_queryset (defines)

