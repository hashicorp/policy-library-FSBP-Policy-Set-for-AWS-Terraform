# AWS DMS Endpoint resource should have the 'auth_mechanism' attribute not 'default' in 'mongodb_settings' for engine of type mongodb

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether an AWS DMS endpoint for MongoDB is configured with an authentication mechanism. The control fails if an authentication type isn't set for the endpoint.

AWS Database Migration Service supports two authentications methods for MongoDB—MONGODB-CR for MongoDB version 2.x, and SCRAM-SHA-1 for MongoDB version 3.x or later. These authentication methods are used to authenticate and encrypt MongoDB passwords if users want to use the passwords to access the databases. Authentication on AWS DMS endpoints ensures that only authorized users can access and modify the data being migrated between databases. Without proper authentication, unauthorized users may be able to gain access to sensitive data during the migration process. This can result in data breaches, data loss, or other security incidents.

This rule is covered by the [dms-mongo-db-authentication-enabled](../../policies/dms/dms-mongo-db-authentication-enabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - dms-mongo-db-authentication-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_dms_endpoint' have the
        'auth_mechanism'
        not set to default in 'mongodb_settings' for engine of type 'mongodb'

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy dms-mongo-db-authentication-enabled.

      ✓ Found 0 resource violations

      dms-mongo-db-authentication-enabled.sentinel:55:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - dms-mongo-db-authentication-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_dms_endpoint' have the
        'auth_mechanism'
        not set to default in 'mongodb_settings' for engine of type 'mongodb'

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy dms-mongo-db-authentication-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_dms_endpoint.test
          | ✗ failed
          | Attribute 'auth_mechanism' shouldn't be 'default' in 'mongodb_settings' for engine of type 'mongodb' in AWS DMS Endpoint. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/dms-controls.html#dms-11 for more details.


      dms-mongo-db-authentication-enabled.sentinel:55:1 - Rule "main"
        Value:
          false
```

---
