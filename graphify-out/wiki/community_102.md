# Community 102: AbonnementCreateSerializer

**Members:** 9

## Nodes

- **AbonnementCreateSerializer** (`backend_courses_serializers_py_abonnementcreateserializer`, Class, degree: 2)
- **.create()** (`backend_courses_serializers_py_abonnementcreateserializer_create`, Method, degree: 3)
- **AbonnementSerializer** (`backend_courses_serializers_py_abonnementserializer`, Class, degree: 2)
- **.create()** (`backend_courses_serializers_py_abonnementserializer_create`, Method, degree: 2)
- **SummaryCreateSerializer** (`backend_courses_serializers_py_summarycreateserializer`, Class, degree: 5)
- **.create()** (`backend_courses_serializers_py_summarycreateserializer_create`, Method, degree: 2)
- **.validate_professeur()** (`backend_courses_serializers_py_summarycreateserializer_validate_professeur`, Method, degree: 1)
- **.validate_texte_resume()** (`backend_courses_serializers_py_summarycreateserializer_validate_texte_resume`, Method, degree: 1)
- **.validate_titre()** (`backend_courses_serializers_py_summarycreateserializer_validate_titre`, Method, degree: 1)

## Relationships

- backend_courses_serializers_py_summarycreateserializer → backend_courses_serializers_py_summarycreateserializer_validate_professeur (defines)
- backend_courses_serializers_py_summarycreateserializer → backend_courses_serializers_py_summarycreateserializer_validate_texte_resume (defines)
- backend_courses_serializers_py_summarycreateserializer → backend_courses_serializers_py_summarycreateserializer_validate_titre (defines)
- backend_courses_serializers_py_summarycreateserializer → backend_courses_serializers_py_summarycreateserializer_create (defines)
- backend_courses_serializers_py_abonnementserializer → backend_courses_serializers_py_abonnementserializer_create (defines)
- backend_courses_serializers_py_abonnementcreateserializer → backend_courses_serializers_py_abonnementcreateserializer_create (defines)
- backend_courses_serializers_py_summarycreateserializer_create → backend_courses_serializers_py_abonnementcreateserializer_create (calls)
- backend_courses_serializers_py_abonnementserializer_create → backend_courses_serializers_py_abonnementcreateserializer_create (calls)

