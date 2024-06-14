# AWS RDS cluster snapshots and database snapshots should be encrypted at rest

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Security     |

## Description

Encrypting data at rest reduces the risk that an unauthenticated user gets access to data that is stored on disk.
Data in RDS snapshots should be encrypted at rest for an added layer of security.

This control checks whether an RDS DB snapshot is encrypted. The control fails if an RDS DB snapshot isn't encrypted.

## Policy Results (Pass)
```bash
trace:
    Pass - rds-encryption-at-rest-enabled.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` have attribute
      "storage_encrypted" set to true.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-encryption-at-rest-enabled.

    ✓ Found 0 resource violations

    rds-encryption-at-rest-enabled.sentinel:45:1 - Rule "main"
      Value:
        true

```

---

## Policy Results (Fail)
```bash
trace:
    Fail - rds-encryption-at-rest-enabled.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` have attribute
      "storage_encrypted" set to true.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-encryption-at-rest-enabled.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_db_instance.default
         | ✗ failed
         | Attribute 'storage_encrypted' must be set to true for 'aws_db_instance' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-3 for more details.


    rds-encryption-at-rest-enabled.sentinel:45:1 - Rule "main"
      Value:
        false
        
```

---