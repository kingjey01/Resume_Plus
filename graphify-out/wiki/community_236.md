# Community 236: generate_personalized_exercise()

**Members:** 5

## Nodes

- **generate_personalized_exercise()** (`backend_courses_personalized_exercise_generator_py_generate_personalized_exercise`, Function, degree: 2)
- **.generate_for_user()** (`backend_courses_personalized_exercise_generator_py_personalizedexercisegenerator_generate_for_user`, Method, degree: 3)
- **._generate_questions()** (`backend_courses_personalized_exercise_generator_py_personalizedexercisegenerator_generate_questions`, Method, degree: 4)
- **._parse_response()** (`backend_courses_personalized_exercise_generator_py_personalizedexercisegenerator_parse_response`, Method, degree: 3)
- **._validate_question()** (`backend_courses_personalized_exercise_generator_py_personalizedexercisegenerator_validate_question`, Method, degree: 2)

## Relationships

- backend_courses_personalized_exercise_generator_py_personalizedexercisegenerator_generate_for_user → backend_courses_personalized_exercise_generator_py_personalizedexercisegenerator_generate_questions (calls)
- backend_courses_personalized_exercise_generator_py_personalizedexercisegenerator_generate_questions → backend_courses_personalized_exercise_generator_py_personalizedexercisegenerator_parse_response (calls)
- backend_courses_personalized_exercise_generator_py_personalizedexercisegenerator_parse_response → backend_courses_personalized_exercise_generator_py_personalizedexercisegenerator_validate_question (calls)
- backend_courses_personalized_exercise_generator_py_generate_personalized_exercise → backend_courses_personalized_exercise_generator_py_personalizedexercisegenerator_generate_for_user (calls)

