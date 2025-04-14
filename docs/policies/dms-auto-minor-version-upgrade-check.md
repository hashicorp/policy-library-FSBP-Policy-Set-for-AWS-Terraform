# AWS DMS Replication Instances should have the auto_minor_version_upgrade attribute set to true

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks if automatic minor version upgrade is enabled for an AWS DMS replication instance. The control fails if automatic minor version upgrade isn't enabled for a DMS replication instance.

DMS provides automatic minor version upgrade to each supported replication engine so that you can keep your replication instance up-to-date. Minor versions can introduce new software features, bug fixes, security patches, and performance improvements. By enabling automatic minor version upgrade on DMS replication instances, minor upgrades are applied automatically during the maintenance window or immediately if the Apply changes immediately option is chosen.

This rule is covered by the [dms-auto-minor-version-upgrade-check](../../policies/dms/dms-auto-minor-version-upgrade-check.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - dms-auto-minor-version-upgrade-check.sentinel

      Description:
        This policy checks if resources of type 'aws_dms_replication_instance' have
        the 'auto_minor_version_upgrade'
        attribute set to true

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy dms-replication-instances-should-not-be-public.

      ✓ Found 0 resource violations

      dms-auto-minor-version-upgrade-check.sentinel:46:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - dms-auto-minor-version-upgrade-check.sentinel

      Description:
        This policy checks if resources of type 'aws_dms_replication_instance' have
        the 'auto_minor_version_upgrade'
        attribute set to true

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy dms-replication-instances-should-not-be-public.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_dms_replication_instance.this
          | ✗ failed
          | Attribute 'publicly_accessible' should be false for AWS DMS Replication Instance. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/dms-controls.html#dms-6 for more details.


      dms-auto-minor-version-upgrade-check.sentinel:46:1 - Rule "main"
        Value:
          false
```

---
