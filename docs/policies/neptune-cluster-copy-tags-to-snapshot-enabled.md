#  Neptune DB clusters should should be configured to copy tags to snapshots

| Provider            | Category                    |
|---------------------|-----------------------------|
| Amazon Web Services | Storage                     |

## Description

This control checks if a Neptune DB cluster is configured to copy all tags to snapshots when the snapshots are created. The control fails if a Neptune DB cluster isn't configured to copy tags to snapshots.

This rule is covered by the [neptune-cluster-copy-tags-to-snapshot-enabled](../../policies/neptune/neptune-cluster-copy-tags-to-snapshot-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - neptune-cluster-copy-tags-to-snapshot-enabled.sentinel

    Description:
    This policy requires attribute 'copy_tags_to_snapshot' to be set to true for
    'aws_neptune_cluster' resources

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy neptune-cluster-copy-tags-to-snapshot-enabled.

    ✓ Found 0 resource violations

    neptune-cluster-copy-tags-to-snapshot-enabled.sentinel:46:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - neptune-cluster-copy-tags-to-snapshot-enabled.sentinel

    Description:
    This policy requires attribute 'copy_tags_to_snapshot' to be set to true for
    'aws_neptune_cluster' resources

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy neptune-cluster-copy-tags-to-snapshot-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_neptune_cluster.default
        | ✗ failed
        | Attribute 'copy_tags_to_snapshot' must have been set to true for 'aws_neptune_cluster' resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/neptune-controls.html#neptune-8 for more details.


    neptune-cluster-copy-tags-to-snapshot-enabled.sentinel:46:1 - Rule "main"
    Value:
        false
```

---