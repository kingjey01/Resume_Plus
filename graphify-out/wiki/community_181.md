# Community 181: test_encoding_fix

**Members:** 6

## Nodes

- **test_encoding_fix** (`backend_test_encoding_fix_py`, File, degree: 5)
- **json** (`backend_test_encoding_fix_py_import_json`, Module, degree: 1)
- **requests** (`backend_test_encoding_fix_py_import_requests`, Module, degree: 1)
- **main()** (`backend_test_encoding_fix_py_main`, Function, degree: 3)
- **test_summary_retrieval()** (`backend_test_encoding_fix_py_test_summary_retrieval`, Function, degree: 2)
- **test_summary_with_special_chars()** (`backend_test_encoding_fix_py_test_summary_with_special_chars`, Function, degree: 2)

## Relationships

- backend_test_encoding_fix_py → backend_test_encoding_fix_py_import_requests (imports)
- backend_test_encoding_fix_py → backend_test_encoding_fix_py_import_json (imports)
- backend_test_encoding_fix_py → backend_test_encoding_fix_py_test_summary_with_special_chars (defines)
- backend_test_encoding_fix_py → backend_test_encoding_fix_py_test_summary_retrieval (defines)
- backend_test_encoding_fix_py → backend_test_encoding_fix_py_main (defines)
- backend_test_encoding_fix_py_main → backend_test_encoding_fix_py_test_summary_with_special_chars (calls)
- backend_test_encoding_fix_py_main → backend_test_encoding_fix_py_test_summary_retrieval (calls)

