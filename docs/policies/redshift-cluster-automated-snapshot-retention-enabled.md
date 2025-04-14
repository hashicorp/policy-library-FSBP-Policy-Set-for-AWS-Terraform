# AWS Redshift clusters should have automated_snapshot_retention_period set between '7 to 35'

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Storage  |

## Description

This control checks whether an Amazon Redshift cluster has automated snapshots enabled, and a retention period greater than or equal to the specified time frame. The control fails if automated snapshots aren't enabled for the cluster, or if the retention period is less than the specified time frame. Unless you provide a custom parameter value for the snapshot retention period, Security Hub uses a default value of 7 days.

Backups help you to recover more quickly from a security incident. They strengthen the resilience of your systems. Amazon Redshift takes periodic snapshots by default. This control checks whether automatic snapshots are enabled and retained for at least seven days.

This rule is covered by the [redshift-cluster-automated-snapshot-retention-enabled](../../policies/redshift/redshift-cluster-automated-snapshot-retention-enabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - redshift-cluster-automated-snapshot-retention-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' have the
        'automated-snapshot-retention-period'
        attribute set in between '7 to 35'

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy redshift-cluster-automated-snapshot-retention-enabled.

      ✓ Found 0 resource violations

      redshift-cluster-automated-snapshot-retention-enabled.sentinel:61:1 - Rule "main"
        Value:
          true

      redshift-cluster-automated-snapshot-retention-enabled.sentinel:53:1 - Rule "check_if_automated_snapshot_retention_limits_are_valid"
        Value:
          true

      redshift-cluster-automated-snapshot-retention-enabled.sentinel:57:1 - Rule "check_redshift_cluster_backup_retention_violations"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - redshift-cluster-automated-snapshot-retention-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' have the
        'automated-snapshot-retention-period'
        attribute set in between '7 to 35'

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy redshift-cluster-automated-snapshot-retention-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_redshift_cluster.rscluster
          | ✗ failed
          | Attribute 'automated_snapshot_retention_period' should be in between '7 to 35' for AWS DocumentDb Cluster. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/redshift-controls.html#redshift-3 for more details.


      redshift-cluster-automated-snapshot-retention-enabled.sentinel:61:1 - Rule "main"
        Value:
          false

      redshift-cluster-automated-snapshot-retention-enabled.sentinel:53:1 - Rule "check_if_automated_snapshot_retention_limits_are_valid"
        Value:
          true

      redshift-cluster-automated-snapshot-retention-enabled.sentinel:57:1 - Rule "check_redshift_cluster_backup_retention_violations"
        Value:
          false
```

---
