# Amazon EBS snapshots should not be publicly restorable

| Provider            |           Category           |
|---------------------| ---------------------------- |
| Amazon Web Services | Secure Network Configuration |

## Description

DISCLAIMER - This policy will work only if resources of type `aws_ebs_snapshot_block_public_access` is present and does not check your AWS Account configuration.

This control checks whether Amazon Elastic Block Store snapshots are not public. The control fails if Amazon EBS snapshots are restorable by anyone.

EBS snapshots are used to back up the data on your EBS volumes to Amazon S3 at a specific point in time. You can use the snapshots to restore previous states of EBS volumes. It is rarely acceptable to share a snapshot with the public. Typically the decision to share a snapshot publicly was made in error or without a complete understanding of the implications. This check helps ensure that all such sharing was fully planned and intentional.

This rule is covered by the [ec2-ebs-snapshot-public-restorable-check-account-level](../../policies/ec2/ec2-ebs-snapshot-public-restorable-check-account-level.sentinel) policy.

## Policy Results (Pass)
```bash
trace:

    Pass - ec2-ebs-snapshot-public-restorable-check-account-level.sentinel

    Description:
    This policy requires `aws_ebs_snapshot_block_public_access` resources to have
    attribute state to either 'block-new-sharing' or 'block-all-sharing'.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy ec2-ebs-snapshot-public-restorable-check-account-level.

    ✓ Found 0 resource violations

    ec2-ebs-snapshot-public-restorable-check-account-level.sentinel:46:1 - Rule "main"
    Value:
        true

```

---

## Policy Results (Fail)
```bash
trace:

    Fail - ec2-ebs-snapshot-public-restorable-check-account-level.sentinel

    Description:
    This policy requires `aws_ebs_snapshot_block_public_access` resources to have
    attribute state to either 'block-new-sharing' or 'block-all-sharing'.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ec2-ebs-snapshot-public-restorable-check-account-level.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_ebs_snapshot_block_public_access.example
        | ✗ failed
        | Attribute 'state' must be either be 'block-all-sharing' or 'block-new-sharing' for 'aws_ebs_snapshot_block_public_access' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ec2-controls.html#ec2-1 for more details.


    ec2-ebs-snapshot-public-restorable-check-account-level.sentinel:46:1 - Rule "main"
    Value:
        false
        
```
---