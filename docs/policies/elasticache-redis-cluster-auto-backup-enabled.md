#  Amazon ElastiCache for Redis cluster should have automatic backups scheduled

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Storage      |

## Description

This control evaluates if an Amazon ElastiCache for Redis cluster has automatic backups scheduled. The control fails if the SnapshotRetentionLimit for the Redis cluster is less than the specified time period. Unless you provide a custom parameter value for the snapshot retention period, Security Hub uses a default value of 1 day.

This rule is covered by the [elasticache-redis-cluster-auto-backup-enabled](../../policies/elasticache-redis-cluster-auto-backup-enabled) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - elasticache-redis-cluster-auto-backup-enabled.sentinel

Description:
  This policy requires that the `snapshot_retention_limit` attribute of the
  `aws_elasticache_cluster` or `aws_elasticache_replication_group`
  resource is greater than 0.

Print messages:

→ → Overall Result: true

This result means that all resources have passed the policy check for the policy elasticache-redis-cluster-auto-backup-enabled.

✓ Found 0 resource violations

elasticache-redis-cluster-auto-backup-enabled.sentinel:52:1 - Rule "main"
  Value:
    true

elasticache-redis-cluster-auto-backup-enabled.sentinel:56:1 - Rule "aws_elasticache_cluster_rule"
  Value:
    true

elasticache-redis-cluster-auto-backup-enabled.sentinel:60:1 - Rule "aws_elasticache_replication_group_rule"
  Value:
    true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - elasticache-redis-cluster-auto-backup-enabled.sentinel

Description:
  This policy requires that the `snapshot_retention_limit` attribute of the
  `aws_elasticache_cluster` or `aws_elasticache_replication_group`
  resource is greater than 0.

Print messages:

→ → Overall Result: false

This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elasticache-redis-cluster-auto-backup-enabled.

Found 1 resource violations

→ Module name: root
   ↳ Resource Address: aws_elasticache_cluster.example
     | ✗ failed
     | Attribute 'snapshot_retention_limit' must be greater than 0 for aws_elasticache_cluster resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elasticache-controls.html#elasticache-1 for more details.


elasticache-redis-cluster-auto-backup-enabled.sentinel:52:1 - Rule "main"
  Value:
    false

elasticache-redis-cluster-auto-backup-enabled.sentinel:56:1 - Rule "aws_elasticache_cluster_rule"
  Value:
    false
```

---