# AWS RDS instance should have logging configured

| Provider            | Category   |
|---------------------|------------|
| Amazon Web Services | Monitoring |

## Description

This control checks whether an Amazon RDS DB instance is configured to publish the following logs to Amazon CloudWatch Logs. The control fails if the instance isn’t configured to publish the following logs to CloudWatch Logs:
Oracle: (Alert, Audit, Trace, Listener)
PostgreSQL: (Postgresql, Upgrade)
MySQL: (Audit, Error, General, SlowQuery)
MariaDB: (Audit, Error, General, SlowQuery)
SQL Server: (Error, Agent)
Aurora: (Audit, Error, General, SlowQuery)
Aurora-MySQL: (Audit, Error, General, SlowQuery)
Aurora-PostgreSQL: (Postgresql, Upgrade).

This rule is covered by the [rds-ensure-cloudwatch-logs-enabled](../../policies/rds/rds-ensure-cloudwatch-logs-enabled.sentinel) policy.

```bash
trace:

    Pass - rds-ensure-cloudwatch-logs-enabled.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` to have
      `enabled_cloudwatch_logs_exports` set to valid array of values.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-ensure-cloudwatch-logs-enabled.

    ✓ Found 0 resource violations

    rds-ensure-cloudwatch-logs-enabled.sentinel:60:1 - Rule "main"
      Value:
        true

```

---

## Policy Results (Fail)
```bash
trace:

  
    Fail - rds-ensure-cloudwatch-logs-enabled.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` to have
      `enabled_cloudwatch_logs_exports` set to valid array of values.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-ensure-cloudwatch-logs-enabled.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_db_instance.default
         | ✗ failed
         | Attribute 'enabled_cloudwatch_logs_exports' must be set to valid values for 'aws_db_instance' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-9 for more details.


    rds-ensure-cloudwatch-logs-enabled.sentinel:60:1 - Rule "main"
      Value:
        false

```

---