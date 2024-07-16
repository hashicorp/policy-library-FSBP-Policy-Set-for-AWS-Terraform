#  Neptune DB clusters should have automated backups enabled

| Provider            | Category                    |
|---------------------|-----------------------------|
| Amazon Web Services | Storage                     |

## Description

This control checks whether a Neptune DB cluster has automated backups enabled, and a backup retention period greater than or equal to the specified time frame. By default the timeframe is set as 7 days and is configrable via the the `backup_retention_period` param.

This rule is covered by the [neptune-cluster-automated-backups-enabled](../../policies/neptune-cluster-automated-backups-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - neptune-cluster-automated-backups-enabled.sentinel

    Description:
    This policy requires attribute 'backup_retention_period' to be greater than or
    equal to 7 for 'aws_neptune_cluster' resources

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy neptune-cluster-automated-backups-enabled.

    ✓ Found 0 resource violations

    neptune-cluster-automated-backups-enabled.sentinel:51:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - neptune-cluster-automated-backups-enabled.sentinel

    Description:
    This policy requires attribute 'backup_retention_period' to be greater than or
    equal to 7 for 'aws_neptune_cluster' resources

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy neptune-cluster-automated-backups-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_neptune_cluster.default
        | ✗ failed
        | Attribute 'backup_retention_period' must be greater than or equal to 7 for 'aws_neptune_cluster' resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/neptune-controls.html#neptune-5 for more details.


    neptune-cluster-automated-backups-enabled.sentinel:51:1 - Rule "main"
    Value:
        false
```

---