# AWS RDS Aurora MySQL Cluster should contain 'audit' for enabled_cloudwatch_logs_exports attribute

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether an Amazon Aurora MySQL DB cluster is configured to publish audit logs to Amazon CloudWatch Logs. The control fails if the cluster isn't configured to publish audit logs to CloudWatch Logs. The control doesn't generate findings for Aurora Serverless v1 DB clusters.

Audit logs capture a record of database activity, including login attempts, data modifications, schema changes, and other events that can be audited for security and compliance purposes. When you configure an Aurora MySQL DB cluster to publish audit logs to a log group in Amazon CloudWatch Logs, you can perform real-time analysis of the log data. CloudWatch Logs retains logs in highly durable storage. You can also create alarms and view metrics in CloudWatch.

This rule is covered by the [rds-aurora-mysql-audit-logging-enabled](../../policies/rds/rds-aurora-mysql-audit-logging-enabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - rds-aurora-mysql-audit-logging-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_rds_cluster' with 'aurora-mysql'
        engine
        have the 'enabled_cloudwatch_logs_exports' attribute contains 'audit'

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy rds-aurora-mysql-audit-logging-enabled.

      ✓ Found 0 resource violations

      rds-aurora-mysql-audit-logging-enabled.sentinel:53:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - rds-aurora-mysql-audit-logging-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_rds_cluster' with 'aurora-mysql'
        engine
        have the 'enabled_cloudwatch_logs_exports' attribute contains 'audit'

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-aurora-mysql-audit-logging-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_rds_cluster.default
          | ✗ failed
          | Attribute 'enabled_cloudwatch_logs_exports' should contain 'audit' for AWS RDS Aurora MySQL Cluster. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-34 for more details.


      rds-aurora-mysql-audit-logging-enabled.sentinel:53:1 - Rule "main"
        Value:
          false
```

---
