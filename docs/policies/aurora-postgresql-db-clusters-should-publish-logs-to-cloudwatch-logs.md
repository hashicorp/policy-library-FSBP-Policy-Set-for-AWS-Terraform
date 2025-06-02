# Amazon EC2 Auto Scaling group should cover multiple Availability Zones

| Provider            | Category |
| ------------------- | -------- |
| Amazon Web Services | Logging  |

## Description

This control checks whether an Amazon Aurora PostgreSQL DB cluster is configured to publish logs to Amazon CloudWatch Logs. The control fails if the Aurora PostgreSQL DB cluster isn't configured to publish PostgreSQL logs to CloudWatch Logs.

Database logging provides detailed records of requests made to an RDS cluster. Aurora PostgreSQL generates event logs that contain useful information for administrators. Publishing these logs to CloudWatch Logs centralizes log management and helps you perform real-time analysis of the log data. CloudWatch Logs retains logs in highly durable storage. You can also create alarms and view metrics in CloudWatch.

This rule is covered by the [aurora-postgresql-db-clusters-should-publish-logs-to-cloudwatch-logs](../../policies/rds/aurora-postgresql-db-clusters-should-publish-logs-to-cloudwatch-logs.sentinel) policy.

## Policy Results (Pass)

```bash
trace:

    Pass - aurora-postgresql-db-clusters-should-publish-logs-to-cloudwatch-logs.sentinel

    Description:
        This control checks whether an Amazon Aurora PostgreSQL DB cluster is
        configured to publish logs to Amazon CloudWatch Logs.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy aurora-postgresql-logs-to-cloudwatch.

    ✓ Found 0 resource violations

    aurora-postgresql-db-clusters-should-publish-logs-to-cloudwatch-logs.sentinel:55:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)

```bash
trace:
    Fail - aurora-postgresql-db-clusters-should-publish-logs-to-cloudwatch-logs.sentinel

    Description:
        This control checks whether an Amazon Aurora PostgreSQL DB cluster is
        configured to publish logs to Amazon CloudWatch Logs.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy aurora-postgresql-logs-to-cloudwatch.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_rds_cluster.aurora_postgresql_cluster
        | ✗ failed
        | Aurora PostgreSQL DB clusters should publish logs to CloudWatch Logs. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-37 for more details.


    aurora-postgresql-db-clusters-should-publish-logs-to-cloudwatch-logs.sentinel:55:1 - Rule "main"
        Value:
            false
```

---
