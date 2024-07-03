# AWS RDS cluster should have backtracking enabled

| Provider            | Category   |
|---------------------|------------|
| Amazon Web Services | Security   |

## Description

This control checks whether an Amazon Aurora cluster has backtracking enabled. The control fails if the cluster doesn't have backtracking enabled. If you provide a custom value for the BacktrackWindowInHours parameter, the control passes only if the cluster is backtracked for the specified length of time.

This rule is covered by the [rds-ensure-cluster-backtracking-enabled](../../policies/rds-ensure-cluster-backtracking-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
    Pass - rds-ensure-cluster-backtracking-enabled.sentinel

    Description:
    This policy requires resources of type `aws_rds_cluster` to have
    `backtrack_window` greater than 0 for engine "aurora" and "aurora-mysql"

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-ensure-cluster-backtracking-enabled.

    ✓ Found 0 resource violations

    rds-ensure-cluster-backtracking-enabled.sentinel:49:1 - Rule "main"
    Value:
        true

```

---

## Policy Results (Fail)
```bash

    Fail - rds-ensure-cluster-backtracking-enabled.sentinel

    Description:
    This policy requires resources of type `aws_rds_cluster` to have
    `backtrack_window` greater than 0 for engine "aurora" and "aurora-mysql"

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-ensure-cluster-backtracking-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_rds_cluster.default
        | ✗ failed
        | Attribute 'backtrack_window' must be greater than 0 for 'aws_rds_cluster' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-14 for more details.


    rds-ensure-cluster-backtracking-enabled.sentinel:49:1 - Rule "main"
    Value:
        false

```

---