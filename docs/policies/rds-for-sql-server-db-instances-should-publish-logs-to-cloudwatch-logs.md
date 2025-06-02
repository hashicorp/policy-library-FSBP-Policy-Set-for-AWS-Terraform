# RDS for SQL Server DB instances should publish logs to CloudWatch Logs

| Provider            | Category |
| ------------------- | -------- |
| Amazon Web Services | Logging  |

## Description

This control checks whether an Amazon RDS for Microsoft SQL Server DB instance is configured to publish logs to Amazon CloudWatch Logs. The control fails if the RDS for SQL Server DB instance isn't configured to publish logs to CloudWatch Logs. You can optionally specify the types of logs that a DB instance should be configured to publish.

Database logging provides detailed records of requests made to an Amazon RDS DB instance. Publishing logs to CloudWatch Logs centralizes log management and helps you perform real-time analysis of log data. CloudWatch Logs retains logs in highly durable storage. In addition, you can use it to create alarms for specific errors that can occur, such as frequent restarts that are recorded in an error log. Similarly, you can create alarms for errors or warnings that are recorded in SQL Server agent logs related to SQL agent jobs.

This rule is covered by the [rds-for-sql-server-db-instances-should-publish-logs-to-cloudwatch-logs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-for-sql-server-db-instances-should-publish-logs-to-cloudwatch-logs.sentinel).
The policy is parameterized and "resource" param value should be "aws_db_instance".

## Policy Results (Pass)

```bash
    Pass - rds-for-sql-server-db-instances-should-publish-logs-to-cloudwatch-logs.sentinel

    Description:
        This control checks whether an Amazon RDS for Microsoft SQL Server DB instance
        is configured to publish logs to Amazon CloudWatch Logs.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-for-sql-server-db-instances-should-publish-logs-to-cloudwatch-logs.

    ✓ Found 0 resource violations

    rds-for-sql-server-db-instances-should-publish-logs-to-cloudwatch-logs.sentinel:63:1 - Rule "main"
        Value:
            true

```

---

## Policy Results (Fail)

```bash
    Fail - rds-for-sql-server-db-instances-should-publish-logs-to-cloudwatch-logs.sentinel

    Description:
        This control checks whether an Amazon RDS for Microsoft SQL Server DB instance
        is configured to publish logs to Amazon CloudWatch Logs.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-for-sql-server-db-instances-should-publish-logs-to-cloudwatch-logs.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_db_instance.sql_server_instance
        | ✗ failed
        | RDS for SQL Server DB instances should publish logs to CloudWatch Logs. Both 'agent' and 'error' log types should be enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-40 for more details.


    rds-for-sql-server-db-instances-should-publish-logs-to-cloudwatch-logs.sentinel:64:1 - Rule "main"
        Value:
            false

```

---
