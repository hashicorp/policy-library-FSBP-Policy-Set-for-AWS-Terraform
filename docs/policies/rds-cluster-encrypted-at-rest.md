# AWS RDS Cluster should have the storage_encrypted attribute set to true

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks if an RDS DB cluster is encrypted at rest. The control fails if an RDS DB cluster isn't encrypted at rest.

Data at rest refers to any data that's stored in persistent, non-volatile storage for any duration. Encryption helps you protect the confidentiality of such data, reducing the risk that an unauthorized user can access it. Encrypting your RDS DB clusters protects your data and metadata against unauthorized access. It also fulfills compliance requirements for data-at-rest encryption of production file systems.

This rule is covered by the [rds-cluster-encrypted-at-rest](../../policies/rds/rds-cluster-encrypted-at-rest.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - rds-cluster-encrypted-at-rest.sentinel

      Description:
        This policy checks if resources of type 'aws_rds_cluster' have the
        'storage_encrypted'
        attribute set to true

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy rds-cluster-encrypted-at-rest.

      ✓ Found 0 resource violations

      rds-cluster-encrypted-at-rest.sentinel:46:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - rds-cluster-encrypted-at-rest.sentinel

      Description:
        This policy checks if resources of type 'aws_rds_cluster' have the
        'storage_encrypted'
        attribute set to true

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-cluster-encrypted-at-rest.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_rds_cluster.default
          | ✗ failed
          | Attribute 'storage_encrypted' should be true for AWS RDS Cluster. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-27 for more details.


      rds-cluster-encrypted-at-rest.sentinel:46:1 - Rule "main"
        Value:
          false
```

---
