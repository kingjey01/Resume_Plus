# Community 59: clear_data()

**Members:** 12

## Nodes

- **clear_data()** (`backend_seed_data_py_clear_data`, Function, degree: 2)
- **create_courses()** (`backend_seed_data_py_create_courses`, Function, degree: 2)
- **create_filieres()** (`backend_seed_data_py_create_filieres`, Function, degree: 2)
- **create_promotions()** (`backend_seed_data_py_create_promotions`, Function, degree: 2)
- **create_services()** (`backend_seed_data_py_create_services`, Function, degree: 2)
- **create_sessions()** (`backend_seed_data_py_create_sessions`, Function, degree: 2)
- **create_summaries()** (`backend_seed_data_py_create_summaries`, Function, degree: 2)
- **create_universites()** (`backend_seed_data_py_create_universites`, Function, degree: 2)
- **create_users()** (`backend_seed_data_py_create_users`, Function, degree: 2)
- **link_filieres_promotions()** (`backend_seed_data_py_link_filieres_promotions`, Function, degree: 2)
- **link_universites_filieres()** (`backend_seed_data_py_link_universites_filieres`, Function, degree: 2)
- **run_seed()** (`backend_seed_data_py_run_seed`, Function, degree: 12)

## Relationships

- backend_seed_data_py_run_seed → backend_seed_data_py_create_summaries (calls)
- backend_seed_data_py_run_seed → backend_seed_data_py_clear_data (calls)
- backend_seed_data_py_run_seed → backend_seed_data_py_create_filieres (calls)
- backend_seed_data_py_run_seed → backend_seed_data_py_link_universites_filieres (calls)
- backend_seed_data_py_run_seed → backend_seed_data_py_create_courses (calls)
- backend_seed_data_py_run_seed → backend_seed_data_py_create_sessions (calls)
- backend_seed_data_py_run_seed → backend_seed_data_py_create_universites (calls)
- backend_seed_data_py_run_seed → backend_seed_data_py_link_filieres_promotions (calls)
- backend_seed_data_py_run_seed → backend_seed_data_py_create_services (calls)
- backend_seed_data_py_run_seed → backend_seed_data_py_create_users (calls)
- backend_seed_data_py_run_seed → backend_seed_data_py_create_promotions (calls)

