# Community 29: tasks

**Members:** 16

## Nodes

- **tasks** (`backend_notifications_tasks_py`, File, degree: 15)
- **cleanup_inactive_tokens()** (`backend_notifications_tasks_py_cleanup_inactive_tokens`, Function, degree: 1)
- **create_and_send_notification()** (`backend_notifications_tasks_py_create_and_send_notification`, Function, degree: 1)
- **_get_fcm_app()** (`backend_notifications_tasks_py_get_fcm_app`, Function, degree: 2)
- **celery.shared_task** (`backend_notifications_tasks_py_import_celery_shared_task`, Module, degree: 1)
- **django.conf.settings** (`backend_notifications_tasks_py_import_django_conf_settings`, Module, degree: 1)
- **logging** (`backend_notifications_tasks_py_import_logging`, Module, degree: 1)
- **_is_invalid_token_error()** (`backend_notifications_tasks_py_is_invalid_token_error`, Function, degree: 2)
- **notify_subscription_expired()** (`backend_notifications_tasks_py_notify_subscription_expired`, Function, degree: 1)
- **notify_subscription_expiring_soon()** (`backend_notifications_tasks_py_notify_subscription_expiring_soon`, Function, degree: 1)
- **notify_subscription_paid()** (`backend_notifications_tasks_py_notify_subscription_paid`, Function, degree: 1)
- **notify_subscription_payment_failed()** (`backend_notifications_tasks_py_notify_subscription_payment_failed`, Function, degree: 1)
- **notify_summary_created()** (`backend_notifications_tasks_py_notify_summary_created`, Function, degree: 1)
- **notify_summary_purchase_failed()** (`backend_notifications_tasks_py_notify_summary_purchase_failed`, Function, degree: 1)
- **notify_summary_purchased()** (`backend_notifications_tasks_py_notify_summary_purchased`, Function, degree: 1)
- **send_fcm_notification()** (`backend_notifications_tasks_py_send_fcm_notification`, Function, degree: 3)

## Relationships

- backend_notifications_tasks_py → backend_notifications_tasks_py_import_logging (imports)
- backend_notifications_tasks_py → backend_notifications_tasks_py_import_celery_shared_task (imports)
- backend_notifications_tasks_py → backend_notifications_tasks_py_import_django_conf_settings (imports)
- backend_notifications_tasks_py → backend_notifications_tasks_py_get_fcm_app (defines)
- backend_notifications_tasks_py → backend_notifications_tasks_py_is_invalid_token_error (defines)
- backend_notifications_tasks_py → backend_notifications_tasks_py_send_fcm_notification (defines)
- backend_notifications_tasks_py → backend_notifications_tasks_py_create_and_send_notification (defines)
- backend_notifications_tasks_py → backend_notifications_tasks_py_notify_summary_created (defines)
- backend_notifications_tasks_py → backend_notifications_tasks_py_notify_subscription_paid (defines)
- backend_notifications_tasks_py → backend_notifications_tasks_py_notify_subscription_expiring_soon (defines)
- backend_notifications_tasks_py → backend_notifications_tasks_py_notify_subscription_expired (defines)
- backend_notifications_tasks_py → backend_notifications_tasks_py_notify_summary_purchased (defines)
- backend_notifications_tasks_py → backend_notifications_tasks_py_notify_subscription_payment_failed (defines)
- backend_notifications_tasks_py → backend_notifications_tasks_py_notify_summary_purchase_failed (defines)
- backend_notifications_tasks_py → backend_notifications_tasks_py_cleanup_inactive_tokens (defines)
- backend_notifications_tasks_py_send_fcm_notification → backend_notifications_tasks_py_is_invalid_token_error (calls)
- backend_notifications_tasks_py_send_fcm_notification → backend_notifications_tasks_py_get_fcm_app (calls)

