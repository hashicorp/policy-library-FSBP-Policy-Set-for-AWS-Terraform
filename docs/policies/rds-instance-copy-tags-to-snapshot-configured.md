# AWS RDS DB instances should be configured to copy tags to snapshots

| Provider            | Category |
|---------------------|----------|
| Amazon Web Services | Identity |

## Description

This control checks whether RDS DB instances are configured to copy all tags to snapshots when the snapshots are created.

This rule is covered by the [rds-copy-tags-to-snapshot-configured](../../policies/rds-copy-tags-to-snapshot-configured.sentinel).
The policy is parameterized and "resource" param value should be "aws_db_instance".

## Policy Results (Pass)
```bash
    Pass - rds-copy-tags-to-snapshot-configured.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` to have
      `copy_tags_to_snapshot` set to true

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-copy-tags-to-snapshot-configured.

    ✓ Found 0 resource violations

    rds-copy-tags-to-snapshot-configured.sentinel:44:1 - Rule "main"
      Value:
        true

```

---

## Policy Results (Fail)
```bash
    Fail - rds-copy-tags-to-snapshot-configured.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` to have
      `copy_tags_to_snapshot` set to true

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-copy-tags-to-snapshot-configured.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_db_instance.default
         | ✗ failed
         | Attribute 'copy_tags_to_snapshot' must be set to true for 'aws_db_instance' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-17 for more details.


    rds-copy-tags-to-snapshot-configured.sentinel:44:1 - Rule "main"
      Value:
        false

```

---