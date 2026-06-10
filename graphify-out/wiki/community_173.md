# Community 173: middleware

**Members:** 7

## Nodes

- **middleware** (`backend_users_middleware_py`, File, degree: 4)
- **datetime** (`backend_users_middleware_py_import_datetime`, Module, degree: 1)
- **django.utils.deprecation.MiddlewareMixin** (`backend_users_middleware_py_import_django_utils_deprecation_middlewaremixin`, Module, degree: 1)
- **logging** (`backend_users_middleware_py_import_logging`, Module, degree: 1)
- **JWTAuthenticationMiddleware** (`backend_users_middleware_py_jwtauthenticationmiddleware`, Class, degree: 3)
- **.process_request()** (`backend_users_middleware_py_jwtauthenticationmiddleware_process_request`, Method, degree: 1)
- **.process_response()** (`backend_users_middleware_py_jwtauthenticationmiddleware_process_response`, Method, degree: 1)

## Relationships

- backend_users_middleware_py → backend_users_middleware_py_import_logging (imports)
- backend_users_middleware_py → backend_users_middleware_py_import_datetime (imports)
- backend_users_middleware_py → backend_users_middleware_py_import_django_utils_deprecation_middlewaremixin (imports)
- backend_users_middleware_py → backend_users_middleware_py_jwtauthenticationmiddleware (defines)
- backend_users_middleware_py_jwtauthenticationmiddleware → backend_users_middleware_py_jwtauthenticationmiddleware_process_request (defines)
- backend_users_middleware_py_jwtauthenticationmiddleware → backend_users_middleware_py_jwtauthenticationmiddleware_process_response (defines)

