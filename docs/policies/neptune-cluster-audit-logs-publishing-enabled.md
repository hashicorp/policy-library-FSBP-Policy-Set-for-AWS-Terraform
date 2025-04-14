#  Neptune DB clusters should publish audit logs to cloudwatch

| Provider            | Category                    |
|---------------------|-----------------------------|
| Amazon Web Services | Storage                     |

## Description

This control checks whether a Neptune DB cluster publishes audit logs to Amazon CloudWatch Logs. The control fails if a Neptune DB cluster doesn't publish audit logs to CloudWatch Logs. EnableCloudWatchLogsExport should be set to Audit.

This rule is covered by the [neptune-cluster-audit-logs-publishing-enabled](../../policies/neptune/neptune-cluster-audit-logs-publishing-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - neptune-cluster-audit-logs-publishing-enabled.sentinel

    Description:
    This policy requires attribute 'enable_cloudwatch_logs_exports' to contain
    'audit' for 'aws_neptune_cluster' resources

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy neptune-cluster-audit-logs-publishing-enabled.

    ✓ Found 0 resource violations

    neptune-cluster-audit-logs-publishing-enabled.sentinel:50:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - neptune-cluster-audit-logs-publishing-enabled.sentinel

    Description:
    This policy requires attribute 'enable_cloudwatch_logs_exports' to contain
    'audit' for 'aws_neptune_cluster' resources

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy neptune-cluster-audit-logs-publishing-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_neptune_cluster.default
        | ✗ failed
        | Attribute 'enable_cloudwatch_logs_exports' must contain 'audit' for 'aws_neptune_cluster' resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/neptune-controls.html#neptune-2 for more details.


    neptune-cluster-audit-logs-publishing-enabled.sentinel:50:1 - Rule "main"
    Value:
        false
```

---