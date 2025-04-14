# AWS RDS instance should have monitoring configured

| Provider            | Category   |
|---------------------|------------|
| Amazon Web Services | Monitoring |

## Description

This control checks whether enhanced monitoring is enabled for an Amazon Relational Database Service (Amazon RDS) DB instance. 
The control fails if enhanced monitoring isn't enabled for the instance. 
If you provide a custom value for the monitoringInterval parameter, the control passes only if enhanced monitoring metrics are collected for the instance at the specified interval.

This rule is covered by the [rds-ensure-monitoring-configured](../../policies/rds/rds-ensure-monitoring-configured.sentinel) policy.

```bash
trace:

    Pass - rds-ensure-monitoring-configured.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` to have
      `monitoring_interval` set to any value in (1, 5, 10, 15, 30, 60)

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-ensure-monitoring-configured.

    ✓ Found 0 resource violations

    rds-ensure-monitoring-configured.sentinel:46:1 - Rule "main"
      Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:

    Fail - rds-ensure-monitoring-configured.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` to have
      `monitoring_interval` set to any value in (1, 5, 10, 15, 30, 60)

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-ensure-monitoring-configured.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_db_instance.default
         | ✗ failed
         | Attribute 'monitoring_interval' must be set to any value in (1, 5, 10, 15, 30, 60) for 'aws_db_instance' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-6 for more details.


    rds-ensure-monitoring-configured.sentinel:46:1 - Rule "main"
      Value:
        false

```

---