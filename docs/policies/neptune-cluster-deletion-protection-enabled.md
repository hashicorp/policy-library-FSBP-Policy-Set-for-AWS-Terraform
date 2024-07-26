#  Neptune DB clusters should have deletion protection enabled

| Provider            | Category                    |
|---------------------|-----------------------------|
| Amazon Web Services | Storage                     |

## Description

This control checks if a Neptune DB cluster has deletion protection enabled. The control fails if a Neptune DB cluster doesn't have deletion protection enabled.

This rule is covered by the [neptune-cluster-deletion-protection-enabled](../../policies/neptune-cluster-deletion-protection-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - neptune-cluster-deletion-protection-enabled.sentinel

    Description:
    This policy requires attribute 'deletion_protection' to be set to true for
    'aws_neptune_cluster' resources

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy neptune-cluster-deletion-protection-enabled.

    ✓ Found 0 resource violations

    neptune-cluster-deletion-protection-enabled.sentinel:46:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - neptune-cluster-deletion-protection-enabled.sentinel

    Description:
    This policy requires attribute 'deletion_protection' to be set to true for
    'aws_neptune_cluster' resources

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy neptune-cluster-deletion-protection-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_neptune_cluster.default
        | ✗ failed
        | Attribute 'deletion_protection' must have been set to true for 'aws_neptune_cluster' resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/neptune-controls.html#neptune-4 for more details.


    neptune-cluster-deletion-protection-enabled.sentinel:46:1 - Rule "main"
    Value:
        false
```

---