#  Neptune DB clusters should have IAM database authentication enabled

| Provider            | Category                    |
|---------------------|-----------------------------|
| Amazon Web Services | Storage                     |

## Description

This control checks if a Neptune DB cluster has IAM database authentication enabled. The control fails if IAM database authentication isn't enabled for a Neptune DB cluster.

This rule is covered by the [neptune-cluster-db-auth-enabled](../../policies/neptune/neptune-cluster-db-auth-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - neptune-cluster-db-auth-enabled.sentinel

    Description:
    This policy requires attribute 'iam_database_authentication_enabled' to be set to true for
    'aws_neptune_cluster' resources

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy neptune-cluster-db-auth-enabled.

    ✓ Found 0 resource violations

    neptune-cluster-db-auth-enabled.sentinel:46:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - neptune-cluster-db-auth-enabled.sentinel

    Description:
    This policy requires attribute 'iam_database_authentication_enabled' to be set to true for
    'aws_neptune_cluster' resources

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy neptune-cluster-db-auth-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_neptune_cluster.default
        | ✗ failed
        | Attribute 'iam_database_authentication_enabled' must have been set to true for 'aws_neptune_cluster' resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/neptune-controls.html#neptune-7 for more details.


    neptune-cluster-db-auth-enabled.sentinel:46:1 - Rule "main"
    Value:
        false
```

---