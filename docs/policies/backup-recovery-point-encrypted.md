# AWS Backup Framework Recovery Point should be encrypted at rest

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks if an AWS Backup recovery point is encrypted at rest. The control fails if the recovery point isn't encrypted at rest.

An AWS Backup recovery point refers to a specific copy or snapshot of data that is created as part of a backup process. It represents a particular moment in time when the data was backed up and serves as a restore point in case the original data becomes lost, corrupted, or inaccessible. Encrypting the backup recovery points adds an extra layer of protection against unauthorized access. Encryption is a best practice to protect the confidentiality, integrity, and security of backup data.

This rule is covered by the [backup-recovery-point-encrypted](../../policies/backup/backup-recovery-point-encrypted.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - backup-recovery-point-encrypted.sentinel

    Description:
      This policy checks if resources of type 'aws_backup_framework' have the
      attribute
      'control' value set to 'BACKUP_RECOVERY_POINT_ENCRYPTED'

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy backup-recovery-point-encrypted.

    ✓ Found 0 resource violations

    backup-recovery-point-encrypted.sentinel:51:1 - Rule "main"
      Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
    Fail - backup-recovery-point-encrypted.sentinel

    Description:
      This policy checks if resources of type 'aws_backup_framework' have the
      attribute
      'control' value set to 'BACKUP_RECOVERY_POINT_ENCRYPTED'

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy backup-recovery-point-encrypted.

    Found 1 resource violations

    → Module name: root
      ↳ Resource Address: aws_backup_framework.Example
        | ✗ failed
        | AWS Backup Framework Recovery Point must be encrypted at rest. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/backup-controls.html#backup-1 for more details.


    backup-recovery-point-encrypted.sentinel:51:1 - Rule "main"
      Value:
        false
```

---
