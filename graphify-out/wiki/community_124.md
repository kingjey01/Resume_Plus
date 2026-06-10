# Community 124: create_courses()

**Members:** 8

## Nodes

- **create_courses()** (`backend_seed_database_py_create_courses`, Function, degree: 3)
- **create_filieres()** (`backend_seed_database_py_create_filieres`, Function, degree: 3)
- **create_promotions()** (`backend_seed_database_py_create_promotions`, Function, degree: 3)
- **create_universites()** (`backend_seed_database_py_create_universites`, Function, degree: 3)
- **display_accounts()** (`backend_seed_database_py_display_accounts`, Function, degree: 3)
- **display_statistics()** (`backend_seed_database_py_display_statistics`, Function, degree: 3)
- **main()** (`backend_seed_database_py_main`, Function, degree: 12)
- **print_header()** (`backend_seed_database_py_print_header`, Function, degree: 4)

## Relationships

- backend_seed_database_py_display_statistics → backend_seed_database_py_print_header (calls)
- backend_seed_database_py_display_accounts → backend_seed_database_py_print_header (calls)
- backend_seed_database_py_main → backend_seed_database_py_display_statistics (calls)
- backend_seed_database_py_main → backend_seed_database_py_display_accounts (calls)
- backend_seed_database_py_main → backend_seed_database_py_create_filieres (calls)
- backend_seed_database_py_main → backend_seed_database_py_print_header (calls)
- backend_seed_database_py_main → backend_seed_database_py_create_universites (calls)
- backend_seed_database_py_main → backend_seed_database_py_create_promotions (calls)
- backend_seed_database_py_main → backend_seed_database_py_create_courses (calls)

