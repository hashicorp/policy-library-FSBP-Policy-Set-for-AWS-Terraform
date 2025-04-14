#  Amazon ElastiCache for Redis replication groups should have encryption at rest enabled

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Storage      |

## Description

This control checks if ElastiCache for Redis replication groups are encrypted at rest. This control fails if an ElastiCache for Redis replication group isn't encrypted at rest.

This rule is covered by the [elasticache-redis-replication-group-encryption-at-rest-enabled](../../policies/elasticache/elasticache-redis-replication-group-encryption-at-rest-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - elasticache-redis-replication-group-encryption-at-rest-enabled.sentinel

      Description:
        This policy requires that the `at_rest_encryption_enabled` attribute of the
        `aws_elasticache_replication_group` resource is true.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy elasticache-redis-replication-group-encryption-at-rest-enabled.

      ✓ Found 0 resource violations

      elasticache-redis-replication-group-encryption-at-rest-enabled.sentinel:47:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - elasticache-redis-replication-group-encryption-at-rest-enabled.sentinel

    Description:
      This policy requires that the `at_rest_encryption_enabled` attribute of the
      `aws_elasticache_replication_group` resource is true.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elasticache-redis-replication-group-encryption-at-rest-enabled.

    Found 1 resource violations

    → Module name: root
      ↳ Resource Address: aws_elasticache_replication_group.example
        | ✗ failed
        | Attribute 'at_rest_encryption_enabled' must be true for 'aws_elasticache_replication_group' resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elasticache-controls.html#elasticache-4 for more details.


    elasticache-redis-replication-group-encryption-at-rest-enabled.sentinel:47:1 - Rule "main"
      Value:
        false
```

---