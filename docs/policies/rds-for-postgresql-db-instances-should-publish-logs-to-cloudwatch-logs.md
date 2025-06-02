# RDS for PostgreSQL DB instances should publish logs to CloudWatch Logs

| Provider            | Category |
| ------------------- | -------- |
| Amazon Web Services | Logging  |

## Description

This control checks whether an Amazon RDS for PostgreSQL DB instance is configured to publish logs to Amazon CloudWatch Logs. The control fails if the PostgreSQL DB instance isn't configured to publish the log types mentioned in the logTypes parameter to CloudWatch Logs.

Database logging provides detailed records of requests made to an RDS instance. PostgreSQL generates event logs that contain useful information for administrators. Publishing these logs to CloudWatch Logs centralizes log management and helps you perform real-time analysis of the log data. CloudWatch Logs retains logs in highly durable storage. You can also create alarms and view metrics in CloudWatch.

This rule is covered by the [rds-for-postgresql-db-instances-should-publish-logs-to-cloudwatch-logs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-for-postgresql-db-instances-should-publish-logs-to-cloudwatch-logs.sentinel) policy.

```bash
trace:

    Pass - rds-for-postgresql-db-instances-should-publish-logs-to-cloudwatch-logs.sentinel

    Description:
        This control checks whether an Amazon RDS for PostgreSQL DB instance is
        configured to publish logs to Amazon CloudWatch Logs.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-postgresql-logs-to-cloudwatch.

    ✓ Found 0 resource violations

    rds-for-postgresql-db-instances-should-publish-logs-to-cloudwatch-logs.sentinel:54:1 - Rule "main"
        Value:
            true

```

---

## Policy Results (Fail)

```bash
trace:

    Fail - rds-for-postgresql-db-instances-should-publish-logs-to-cloudwatch-logs.sentinel

    Description:
        This control checks whether an Amazon RDS for PostgreSQL DB instance is
        configured to publish logs to Amazon CloudWatch Logs.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-postgresql-logs-to-cloudwatch.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_db_instance.postgresql_db
        | ✗ failed
        | RDS for PostgreSQL DB instances should publish logs to CloudWatch Logs. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-36 for more details.


    rds-for-postgresql-db-instances-should-publish-logs-to-cloudwatch-logs.sentinel:54:1 - Rule "main"
        Value:
            false

```

---
