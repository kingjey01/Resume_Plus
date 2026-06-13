# Community 169: ExerciseGenerator

**Members:** 7

## Nodes

- **ExerciseGenerator** (`backend_courses_exercise_generator_py_exercisegenerator`, Class, degree: 7)
- **.generate_exercises_for_summary()** (`backend_courses_exercise_generator_py_exercisegenerator_generate_exercises_for_summary`, Method, degree: 2)
- **._generate_mock_questions()** (`backend_courses_exercise_generator_py_exercisegenerator_generate_mock_questions`, Method, degree: 2)
- **._generate_questions_with_ai()** (`backend_courses_exercise_generator_py_exercisegenerator_generate_questions_with_ai`, Method, degree: 4)
- **.__init__()** (`backend_courses_exercise_generator_py_exercisegenerator_init`, Method, degree: 1)
- **._parse_ai_response()** (`backend_courses_exercise_generator_py_exercisegenerator_parse_ai_response`, Method, degree: 3)
- **._validate_question_structure()** (`backend_courses_exercise_generator_py_exercisegenerator_validate_question_structure`, Method, degree: 2)

## Relationships

- backend_courses_exercise_generator_py_exercisegenerator → backend_courses_exercise_generator_py_exercisegenerator_init (defines)
- backend_courses_exercise_generator_py_exercisegenerator → backend_courses_exercise_generator_py_exercisegenerator_generate_exercises_for_summary (defines)
- backend_courses_exercise_generator_py_exercisegenerator → backend_courses_exercise_generator_py_exercisegenerator_generate_questions_with_ai (defines)
- backend_courses_exercise_generator_py_exercisegenerator → backend_courses_exercise_generator_py_exercisegenerator_parse_ai_response (defines)
- backend_courses_exercise_generator_py_exercisegenerator → backend_courses_exercise_generator_py_exercisegenerator_validate_question_structure (defines)
- backend_courses_exercise_generator_py_exercisegenerator → backend_courses_exercise_generator_py_exercisegenerator_generate_mock_questions (defines)
- backend_courses_exercise_generator_py_exercisegenerator_generate_exercises_for_summary → backend_courses_exercise_generator_py_exercisegenerator_generate_questions_with_ai (calls)
- backend_courses_exercise_generator_py_exercisegenerator_generate_questions_with_ai → backend_courses_exercise_generator_py_exercisegenerator_parse_ai_response (calls)
- backend_courses_exercise_generator_py_exercisegenerator_generate_questions_with_ai → backend_courses_exercise_generator_py_exercisegenerator_generate_mock_questions (calls)
- backend_courses_exercise_generator_py_exercisegenerator_parse_ai_response → backend_courses_exercise_generator_py_exercisegenerator_validate_question_structure (calls)

