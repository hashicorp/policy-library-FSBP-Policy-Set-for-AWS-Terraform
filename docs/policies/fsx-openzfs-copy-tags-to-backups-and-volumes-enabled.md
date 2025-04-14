# FSx for OpenZFS file systems should be configured to copy tags to backups and volumes

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks if an Amazon FSx for OpenZFS file system is configured to copy tags to backups and volumes. The control fails if the OpenZFS file system isn't configured to copy tags to backups and volumes.

Identification and inventory of your IT assets is an important aspect of governance and security. Tags help you categorize your AWS resources in different ways, for example, by purpose, owner, or environment. This is useful when you have many resources of the same type because you can quickly identify a specific resource based on the tags that you assigned to it.

This rule is covered by the [fsx-openzfs-copy-tags-to-backups-and-volumes-enabled](../../policies/fsx/fsx-openzfs-copy-tags-to-backups-and-volumes-enabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - fsx-openzfs-copy-tags-to-backups-and-volumes-enabled.sentinel

    Description:
    This policy requires resources of type `aws_fsx_openzfs_file_system` have the
    `copy_tags_to_backups` and 'copy_tags_to_columes' attributes set to true.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy fsx-openzfs-copy-tags-to-backups-and-volumes-enabled.

    ✓ Found 0 resource violations

    fsx-openzfs-copy-tags-to-backups-and-volumes-enabled.sentinel:51:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
    Fail - fsx-openzfs-copy-tags-to-backups-and-volumes-enabled.sentinel

    Description:
    This policy requires resources of type `aws_fsx_openzfs_file_system` have the
    `copy_tags_to_backups` and 'copy_tags_to_columes' attributes set to true.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy fsx-openzfs-copy-tags-to-backups-and-volumes-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_fsx_openzfs_file_system.test
        | ✗ failed
        | Attributes 'copy_tags_to_backups' and 'copy_tags_to_volumes' must be true for 'aws_fsx_openzfs_file_system' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/fsx-controls.html#fsx-1 for more details.


    fsx-openzfs-copy-tags-to-backups-and-volumes-enabled.sentinel:51:1 - Rule "main"
    Value:
        false
```

---
