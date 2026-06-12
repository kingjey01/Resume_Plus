# Community 143: serializers

**Members:** 8

## Nodes

- **serializers** (`backend_security_serializers_py`, File, degree: 5)
- **CreateSecurityLogSerializer** (`backend_security_serializers_py_createsecuritylogserializer`, Class, degree: 3)
- **.create()** (`backend_security_serializers_py_createsecuritylogserializer_create`, Method, degree: 2)
- **.get_client_ip()** (`backend_security_serializers_py_createsecuritylogserializer_get_client_ip`, Method, degree: 2)
- **.models.SecurityLog** (`backend_security_serializers_py_import_models_securitylog`, Module, degree: 1)
- **rest_framework.serializers** (`backend_security_serializers_py_import_rest_framework_serializers`, Module, degree: 1)
- **Meta** (`backend_security_serializers_py_meta`, Class, degree: 1)
- **SecurityLogSerializer** (`backend_security_serializers_py_securitylogserializer`, Class, degree: 1)

## Relationships

- backend_security_serializers_py → backend_security_serializers_py_import_rest_framework_serializers (imports)
- backend_security_serializers_py → backend_security_serializers_py_import_models_securitylog (imports)
- backend_security_serializers_py → backend_security_serializers_py_securitylogserializer (defines)
- backend_security_serializers_py → backend_security_serializers_py_meta (defines)
- backend_security_serializers_py → backend_security_serializers_py_createsecuritylogserializer (defines)
- backend_security_serializers_py_createsecuritylogserializer → backend_security_serializers_py_createsecuritylogserializer_create (defines)
- backend_security_serializers_py_createsecuritylogserializer → backend_security_serializers_py_createsecuritylogserializer_get_client_ip (defines)
- backend_security_serializers_py_createsecuritylogserializer_create → backend_security_serializers_py_createsecuritylogserializer_get_client_ip (calls)

