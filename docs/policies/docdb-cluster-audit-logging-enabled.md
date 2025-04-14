# AWS DocumentDB clusters should have enabled_cloudwatch_logs_exports attribute set to 'audit'

| Provider            | Category |
| ------------------- | -------- |
| Amazon Web Services | Storage  |

## Description

This control checks whether an Amazon DocumentDB cluster publishes audit logs to Amazon CloudWatch Logs. The control fails if the cluster doesn't publish audit logs to CloudWatch Logs.

Amazon DocumentDB (with MongoDB compatibility) allows you to audit events that were performed in your cluster. Examples of logged events include successful and failed authentication attempts, dropping a collection in a database, or creating an index. By default, auditing is disabled in Amazon DocumentDB and requires that you take action to enable it.

This rule is covered by the [docdb-cluster-audit-logging-enabled](../../policies/docdb/docdb-cluster-audit-logging-enabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - docdb-cluster-audit-logging-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_docdb_cluster' have the
        'enabled_cloudwatch_logs_exports' attribute
        set in 'audit'

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy docdb-cluster-audit-logging-enabled.

      ✓ Found 0 resource violations

      docdb-cluster-audit-logging-enabled.sentinel:61:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - docdb-cluster-audit-logging-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_docdb_cluster' have the
        'enabled_cloudwatch_logs_exports' attribute
        set to 'audit'

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy docdb-cluster-audit-logging-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_docdb_cluster.docdb
          | ✗ failed
          | Attribute 'enabled_cloudwatch_logs_exports' should be 'audit' for AWS DocumentDb Cluster. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/documentdb-controls.html#documentdb-4 for more details.


      docdb-cluster-audit-logging-enabled.sentinel:60:1 - Rule "main"
        Value:
          false
```

---
