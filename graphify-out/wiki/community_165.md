# Community 165: periodic_tasks

**Members:** 7

## Nodes

- **periodic_tasks** (`backend_notifications_periodic_tasks_py`, File, degree: 6)
- **check_subscriptions_expired()** (`backend_notifications_periodic_tasks_py_check_subscriptions_expired`, Function, degree: 1)
- **check_subscriptions_expiring_soon()** (`backend_notifications_periodic_tasks_py_check_subscriptions_expiring_soon`, Function, degree: 1)
- **celery.shared_task** (`backend_notifications_periodic_tasks_py_import_celery_shared_task`, Module, degree: 1)
- **datetime.timedelta** (`backend_notifications_periodic_tasks_py_import_datetime_timedelta`, Module, degree: 1)
- **django.utils.timezone** (`backend_notifications_periodic_tasks_py_import_django_utils_timezone`, Module, degree: 1)
- **logging** (`backend_notifications_periodic_tasks_py_import_logging`, Module, degree: 1)

## Relationships

- backend_notifications_periodic_tasks_py → backend_notifications_periodic_tasks_py_import_logging (imports)
- backend_notifications_periodic_tasks_py → backend_notifications_periodic_tasks_py_import_celery_shared_task (imports)
- backend_notifications_periodic_tasks_py → backend_notifications_periodic_tasks_py_import_django_utils_timezone (imports)
- backend_notifications_periodic_tasks_py → backend_notifications_periodic_tasks_py_import_datetime_timedelta (imports)
- backend_notifications_periodic_tasks_py → backend_notifications_periodic_tasks_py_check_subscriptions_expiring_soon (defines)
- backend_notifications_periodic_tasks_py → backend_notifications_periodic_tasks_py_check_subscriptions_expired (defines)

