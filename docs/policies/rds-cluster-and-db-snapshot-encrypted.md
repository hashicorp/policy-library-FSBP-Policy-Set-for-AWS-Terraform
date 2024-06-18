# AWS RDS cluster snapshots and database snapshots should be encrypted at rest

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Security     |

## Description

This control checks whether an RDS DB snapshot is encrypted. The control fails if an RDS DB snapshot isn't encrypted.

This control is intended for RDS DB instances. However, it can also generate findings for snapshots of Aurora DB instances, 
Neptune DB instances, and Amazon DocumentDB clusters. 

This rule is covered by the [rds-cluster-and-db-snapshot-encrypted](../../policies/rds-cluster-and-db-snapshot-encrypted.sentinel) policy.

## Policy Results (Pass)
```bash
    Pass - rds-cluster-and-db-snapshot-encrypted.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` have attribute
      "storage_encrypted" set to true.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-encryption-at-rest-enabled.

    ✓ Found 0 resource violations
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - rds-cluster-and-db-snapshot-encrypted.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` have attribute
      "storage_encrypted" set to true.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-encryption-at-rest-enabled.

    Found 2 resource violations

    → Module name: root
       ↳ Resource Address: aws_db_instance.default
         | ✗ failed
         | Attribute 'storage_encrypted' must be set to true and kms_key_id must be set for 'aws_db_instance' and 'aws_rds_cluster' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-4 for more details.
       ↳ Resource Address: aws_db_instance.default
         | ✗ failed
         | Attribute 'storage_encrypted' must be set to true and kms_key_id must be set for 'aws_db_instance' and 'aws_rds_cluster' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-4 for more details.


    rds-cluster-and-db-snapshot-encrypted.sentinel:59:1 - Rule "main"
      Value:
        false
        
```

---