# AWS Redshift Cluster should have the allow_version_upgrade attribute set to true

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether automatic major version upgrades are enabled for the Amazon Redshift cluster.

Enabling automatic major version upgrades ensures that the latest major version updates to Amazon Redshift clusters are installed during the maintenance window. These updates might include security patches and bug fixes. Keeping up to date with patch installation is an important step in securing systems.

This rule is covered by the [redshift-cluster-maintenance-settings-check](../../policies/redshift/redshift-cluster-maintenance-settings-check.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - redshift-cluster-maintenance-settings-check.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' have the
        'allow_version_upgrade'
        attribute set to true

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy redshift-cluster-miantenance-settings-check.

      ✓ Found 0 resource violations

      redshift-cluster-maintenance-settings-check.sentinel:46:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - redshift-cluster-maintenance-settings-check.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' have the
        'allow_version_upgrade'
        attribute set to true

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy redshift-cluster-miantenance-settings-check.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_redshift_cluster.rscluster
          | ✗ failed
          | Attribute 'allow-version-upgrade' should be true for AWS Redshift Cluster. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/redshift-controls.html#redshift-6 for more details.


      redshift-cluster-maintenance-settings-check.sentinel:46:1 - Rule "main"
        Value:
          false
```

---
