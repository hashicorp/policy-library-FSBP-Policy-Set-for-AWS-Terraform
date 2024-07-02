# AWS DocumentDB clusters should have backup_retention_period set between '7 to 35'

| Provider            | Category |
| ------------------- | -------- |
| Amazon Web Services | Storage  |

## Description

This control checks whether an Amazon DocumentDB cluster has a backup retention period greater than or equal to the specified time frame. The control fails if the backup retention period is less than the specified time frame. Unless you provide a custom parameter value for the backup retention period, Security Hub uses a default value of 7 days.

Backups help you recover more quickly from a security incident and strengthen the resilience of your systems. By automating backups for your Amazon DocumentDB clusters, you'll be able to restore your systems to a point in time and minimize downtime and data loss. In Amazon DocumentDB, clusters have a default backup retention period of 1 day. This must be increased to a value between 7 and 35 days to pass this control.

This rule is covered by the [docdb-cluster-backup-retention-check](../../policies/docdb-cluster-backup-retention-check.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - docdb-cluster-backup-retention-check.sentinel

      Description:
        This policy checks if resources of type 'aws_docdb_cluster' have the
        'backup-retention-period'
        attribute set in between '7 to 35'

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy docdb-cluster-backup-retention-check.

      ✓ Found 0 resource violations

      docdb-cluster-backup-retention-check.sentinel:53:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - docdb-cluster-backup-retention-check.sentinel

      Description:
        This policy checks if resources of type 'aws_docdb_cluster' have the
        'backup-retention-period'
        attribute set in between '7 to 35'

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy docdb-cluster-backup-retention-check.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_docdb_cluster.docdb
          | ✗ failed
          | Attribute 'backup_retention_period' should be in between '7 to 35' for AWS DocumentDb Cluster. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/documentdb-controls.html#documentdb-2 for more details.


      docdb-cluster-backup-retention-check.sentinel:53:1 - Rule "main"
        Value:
          false
```

---
