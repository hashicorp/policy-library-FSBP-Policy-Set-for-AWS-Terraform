#  Amazon ElastiCache for Redis cluster should have automatic failovers enabled

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Storage      |

## Description

This control checks if ElastiCache for Redis replication groups have automatic failover enabled. This control fails if automatic failover isn't enabled for a Redis replication group.

This rule is covered by the [elasticache-redis-cluster-auto-failover-enabled](../../policies/elasticache-redis-cluster-auto-failover-enabled) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - elasticache-redis-cluster-auto-failover-enabled.sentinel

      Description:
        This policy requires that the `automatic_failover_enabled` attribute of the
        `aws_elasticache_replication_group` resource is true.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy elasticache-redis-cluster-auto-failover-enabled.

      ✓ Found 0 resource violations

      elasticache-redis-cluster-auto-failover-enabled.sentinel:47:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - elasticache-redis-cluster-auto-failover-enabled.sentinel

    Description:
      This policy requires that the `automatic_failover_enabled` attribute of the
      `aws_elasticache_replication_group` resource is true.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elasticache-redis-cluster-auto-failover-enabled.

    Found 1 resource violations

    → Module name: root
      ↳ Resource Address: aws_elasticache_replication_group.example
        | ✗ failed
        | Attribute 'automatic_failover_enabled' must be true for 'aws_elasticache_replication_group' resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elasticache-controls.html#elasticache-3 for more details.


    elasticache-redis-cluster-auto-failover-enabled.sentinel:47:1 - Rule "main"
      Value:
        false
```

---