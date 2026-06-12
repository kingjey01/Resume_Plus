# Community 258: ExerciseAttempt

**Members:** 5

## Nodes

- **ExerciseAttempt** (`backend_courses_models_py_exerciseattempt`, Class, degree: 3)
- **.calculate_score()** (`backend_courses_models_py_exerciseattempt_calculate_score`, Method, degree: 2)
- **.__str__()** (`backend_courses_models_py_exerciseattempt_str`, Method, degree: 1)
- **.save()** (`backend_courses_models_py_summary_save`, Method, degree: 4)
- **.mark_accessed()** (`backend_courses_models_py_userpersonalizedexercise_mark_accessed`, Method, degree: 2)

## Relationships

- backend_courses_models_py_exerciseattempt → backend_courses_models_py_exerciseattempt_str (defines)
- backend_courses_models_py_exerciseattempt → backend_courses_models_py_exerciseattempt_calculate_score (defines)
- backend_courses_models_py_exerciseattempt_calculate_score → backend_courses_models_py_summary_save (calls)
- backend_courses_models_py_userpersonalizedexercise_mark_accessed → backend_courses_models_py_summary_save (calls)

