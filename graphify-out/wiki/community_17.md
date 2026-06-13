# Community 17: admin

**Members:** 19

## Nodes

- **admin** (`backend_courses_admin_py`, File, degree: 14)
- **CourseAdmin** (`backend_courses_admin_py_courseadmin`, Class, degree: 4)
- **.get_filieres()** (`backend_courses_admin_py_courseadmin_get_filieres`, Method, degree: 1)
- **.get_promotions()** (`backend_courses_admin_py_courseadmin_get_promotions`, Method, degree: 1)
- **.get_universites()** (`backend_courses_admin_py_courseadmin_get_universites`, Method, degree: 1)
- **ExerciseAttemptAdmin** (`backend_courses_admin_py_exerciseattemptadmin`, Class, degree: 2)
- **.get_queryset()** (`backend_courses_admin_py_exerciseattemptadmin_get_queryset`, Method, degree: 2)
- **FiliereAdmin** (`backend_courses_admin_py_filiereadmin`, Class, degree: 1)
- **django.contrib.admin** (`backend_courses_admin_py_import_django_contrib_admin`, Module, degree: 1)
- **.models** (`backend_courses_admin_py_import_models`, Module, degree: 1)
- **ProfesseurAdmin** (`backend_courses_admin_py_professeuradmin`, Class, degree: 3)
- **.list_filieres()** (`backend_courses_admin_py_professeuradmin_list_filieres`, Method, degree: 1)
- **ProfesseurFilieresAdmin** (`backend_courses_admin_py_professeurfilieresadmin`, Class, degree: 5)
- **.has_add_permission()** (`backend_courses_admin_py_professeurfilieresadmin_has_add_permission`, Method, degree: 1)
- **.has_change_permission()** (`backend_courses_admin_py_professeurfilieresadmin_has_change_permission`, Method, degree: 1)
- **.has_delete_permission()** (`backend_courses_admin_py_professeurfilieresadmin_has_delete_permission`, Method, degree: 1)
- **PromotionAdmin** (`backend_courses_admin_py_promotionadmin`, Class, degree: 1)
- **SessionAdmin** (`backend_courses_admin_py_sessionadmin`, Class, degree: 1)
- **UniversiteAdmin** (`backend_courses_admin_py_universiteadmin`, Class, degree: 1)

## Relationships

- backend_courses_admin_py → backend_courses_admin_py_import_django_contrib_admin (imports)
- backend_courses_admin_py → backend_courses_admin_py_import_models (imports)
- backend_courses_admin_py → backend_courses_admin_py_courseadmin (defines)
- backend_courses_admin_py_courseadmin → backend_courses_admin_py_courseadmin_get_universites (defines)
- backend_courses_admin_py_courseadmin → backend_courses_admin_py_courseadmin_get_filieres (defines)
- backend_courses_admin_py_courseadmin → backend_courses_admin_py_courseadmin_get_promotions (defines)
- backend_courses_admin_py → backend_courses_admin_py_sessionadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_universiteadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_promotionadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_filiereadmin (defines)
- backend_courses_admin_py → backend_courses_admin_py_exerciseattemptadmin (defines)
- backend_courses_admin_py_exerciseattemptadmin → backend_courses_admin_py_exerciseattemptadmin_get_queryset (defines)
- backend_courses_admin_py → backend_courses_admin_py_professeurfilieresadmin (defines)
- backend_courses_admin_py_professeurfilieresadmin → backend_courses_admin_py_professeurfilieresadmin_has_add_permission (defines)
- backend_courses_admin_py_professeurfilieresadmin → backend_courses_admin_py_professeurfilieresadmin_has_change_permission (defines)
- backend_courses_admin_py_professeurfilieresadmin → backend_courses_admin_py_professeurfilieresadmin_has_delete_permission (defines)
- backend_courses_admin_py → backend_courses_admin_py_professeuradmin (defines)
- backend_courses_admin_py_professeuradmin → backend_courses_admin_py_professeuradmin_list_filieres (defines)

