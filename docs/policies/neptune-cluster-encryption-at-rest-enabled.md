#  Neptune DB clusters should be encrypted at rest

| Provider            | Category                    |
|---------------------|-----------------------------|
| Amazon Web Services | Storage                     |

## Description

This control checks whether a Neptune DB cluster is encrypted at rest. The control fails if a Neptune DB cluster isn't encrypted at rest.

This rule is covered by the [neptune-cluster-encryption-at-rest-enabled](../../policies/neptune-cluster-encryption-at-rest-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - neptune-cluster-encryption-at-rest-enabled.sentinel

    Description:
    This policy requires attribute 'storage_encrypted' to be set to true for
    'aws_neptune_cluster' resources

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy neptune-cluster-encryption-at-rest-enabled.

    ✓ Found 0 resource violations

    neptune-cluster-encryption-at-rest-enabled.sentinel:46:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - neptune-cluster-encryption-at-rest-enabled.sentinel

    Description:
    This policy requires attribute 'storage_encrypted' to be set to true for
    'aws_neptune_cluster' resources

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy neptune-cluster-encryption-at-rest-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_neptune_cluster.default
        | ✗ failed
        | Attribute 'storage_encrypted' must have been set to true for 'aws_neptune_cluster' resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/neptune-controls.html#neptune-1 for more details.


    neptune-cluster-encryption-at-rest-enabled.sentinel:46:1 - Rule "main"
    Value:
        false
```

---