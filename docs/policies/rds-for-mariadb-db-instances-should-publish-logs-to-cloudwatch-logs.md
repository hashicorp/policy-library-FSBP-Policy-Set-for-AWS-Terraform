# RDS for MariaDB DB instances should publish logs to CloudWatch Logs

| Provider            | Category |
| ------------------- | -------- |
| Amazon Web Services | Logging  |

## Description

This control checks whether an Amazon RDS for MariaDB DB instance is configured to publish certain types of logs to Amazon CloudWatch Logs. The control fails if the MariaDB DB instance isn't configured to publish the logs to CloudWatch Logs. You can optionally specify which types of logs a MariaDB DB instance should be configured to publish.

Database logging provides detailed records of requests made to an Amazon RDS for MariaDB DB instance. Publishing logs to Amazon CloudWatch Logs centralizes log management and helps you perform real-time analysis of the log data. In addition, CloudWatch Logs retains the logs in durable storage, which can support security, access, and availability reviews and audits. With CloudWatch Logs, you can also create alarms and review metrics.

This rule is covered by the [rds-for-mariadb-db-instances-should-publish-logs-to-cloudwatch-logs](../../policies/rds/rds-for-mariadb-db-instances-should-publish-logs-to-cloudwatch-logs.sentinel).
The policy is parameterized and "resource" param value should be "aws_db_instance".

## Policy Results (Pass)

```bash
    Pass - rds-for-mariadb-db-instances-should-publish-logs-to-cloudwatch-logs.sentinel

    Description:
        This control checks whether an Amazon RDS for MariaDB DB instance is
        configured to publish certain types of logs to Amazon CloudWatch Logs.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-for-mariadb-db-instances-should-publish-logs-to-cloudwatch-logs.

    ✓ Found 0 resource violations

    rds-for-mariadb-db-instances-should-publish-logs-to-cloudwatch-logs.sentinel:65:1 - Rule "main"
        Value:
            true


```

---

## Policy Results (Fail)

```bash
    Fail - rds-for-mariadb-db-instances-should-publish-logs-to-cloudwatch-logs.sentinel

    Description:
        This control checks whether an Amazon RDS for MariaDB DB instance is
        configured to publish certain types of logs to Amazon CloudWatch Logs.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-for-mariadb-db-instances-should-publish-logs-to-cloudwatch-logs.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_db_instance.postgres_db
        | ✗ failed
        | RDS for MariaDB DB instances must be configured to publish logs to CloudWatch Logs. At minimum, 'audit' and 'error' log types should be enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-42 for more details.


    rds-for-mariadb-db-instances-should-publish-logs-to-cloudwatch-logs.sentinel:65:1 - Rule "main"
        Value:
            false

```

---
