# Community 117: AuthAPITest

**Members:** 8

## Nodes

- **AuthAPITest** (`backend_users_tests_py_authapitest`, Class, degree: 8)
- **.setUp()** (`backend_users_tests_py_authapitest_setup`, Method, degree: 1)
- **.test_login_user()** (`backend_users_tests_py_authapitest_test_login_user`, Method, degree: 4)
- **.test_logout()** (`backend_users_tests_py_authapitest_test_logout`, Method, degree: 2)
- **.test_logout_without_token()** (`backend_users_tests_py_authapitest_test_logout_without_token`, Method, degree: 2)
- **.test_refresh_token()** (`backend_users_tests_py_authapitest_test_refresh_token`, Method, degree: 2)
- **.test_refresh_token_invalid()** (`backend_users_tests_py_authapitest_test_refresh_token_invalid`, Method, degree: 1)
- **.test_register_user()** (`backend_users_tests_py_authapitest_test_register_user`, Method, degree: 1)

## Relationships

- backend_users_tests_py_authapitest → backend_users_tests_py_authapitest_setup (defines)
- backend_users_tests_py_authapitest → backend_users_tests_py_authapitest_test_register_user (defines)
- backend_users_tests_py_authapitest → backend_users_tests_py_authapitest_test_refresh_token (defines)
- backend_users_tests_py_authapitest → backend_users_tests_py_authapitest_test_refresh_token_invalid (defines)
- backend_users_tests_py_authapitest → backend_users_tests_py_authapitest_test_logout (defines)
- backend_users_tests_py_authapitest → backend_users_tests_py_authapitest_test_logout_without_token (defines)
- backend_users_tests_py_authapitest → backend_users_tests_py_authapitest_test_login_user (defines)
- backend_users_tests_py_authapitest_test_refresh_token → backend_users_tests_py_authapitest_test_login_user (calls)
- backend_users_tests_py_authapitest_test_logout → backend_users_tests_py_authapitest_test_login_user (calls)
- backend_users_tests_py_authapitest_test_logout_without_token → backend_users_tests_py_authapitest_test_login_user (calls)

