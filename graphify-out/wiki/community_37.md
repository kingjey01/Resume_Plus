# Community 37: serializers

**Members:** 14

## Nodes

- **serializers** (`backend_payments_serializers_py`, File, degree: 10)
- **AbonnementSerializer** (`backend_payments_serializers_py_abonnementserializer`, Class, degree: 2)
- **.get_progress_percentage()** (`backend_payments_serializers_py_abonnementserializer_get_progress_percentage`, Method, degree: 1)
- **CreatePurchaseSerializer** (`backend_payments_serializers_py_createpurchaseserializer`, Class, degree: 2)
- **.create()** (`backend_payments_serializers_py_createpurchaseserializer_create`, Method, degree: 1)
- **courses.models.Summary** (`backend_payments_serializers_py_import_courses_models_summary`, Module, degree: 1)
- **.models.Abonnement** (`backend_payments_serializers_py_import_models_abonnement`, Module, degree: 1)
- **.models.Purchase** (`backend_payments_serializers_py_import_models_purchase`, Module, degree: 1)
- **.models.Service** (`backend_payments_serializers_py_import_models_service`, Module, degree: 1)
- **rest_framework.serializers** (`backend_payments_serializers_py_import_rest_framework_serializers`, Module, degree: 1)
- **Meta** (`backend_payments_serializers_py_meta`, Class, degree: 1)
- **PurchaseSerializer** (`backend_payments_serializers_py_purchaseserializer`, Class, degree: 2)
- **.get_purchase_type()** (`backend_payments_serializers_py_purchaseserializer_get_purchase_type`, Method, degree: 1)
- **ServiceSerializer** (`backend_payments_serializers_py_serviceserializer`, Class, degree: 1)

## Relationships

- backend_payments_serializers_py → backend_payments_serializers_py_import_rest_framework_serializers (imports)
- backend_payments_serializers_py → backend_payments_serializers_py_import_models_purchase (imports)
- backend_payments_serializers_py → backend_payments_serializers_py_import_models_service (imports)
- backend_payments_serializers_py → backend_payments_serializers_py_import_models_abonnement (imports)
- backend_payments_serializers_py → backend_payments_serializers_py_import_courses_models_summary (imports)
- backend_payments_serializers_py → backend_payments_serializers_py_purchaseserializer (defines)
- backend_payments_serializers_py → backend_payments_serializers_py_meta (defines)
- backend_payments_serializers_py_purchaseserializer → backend_payments_serializers_py_purchaseserializer_get_purchase_type (defines)
- backend_payments_serializers_py → backend_payments_serializers_py_createpurchaseserializer (defines)
- backend_payments_serializers_py_createpurchaseserializer → backend_payments_serializers_py_createpurchaseserializer_create (defines)
- backend_payments_serializers_py → backend_payments_serializers_py_serviceserializer (defines)
- backend_payments_serializers_py → backend_payments_serializers_py_abonnementserializer (defines)
- backend_payments_serializers_py_abonnementserializer → backend_payments_serializers_py_abonnementserializer_get_progress_percentage (defines)

