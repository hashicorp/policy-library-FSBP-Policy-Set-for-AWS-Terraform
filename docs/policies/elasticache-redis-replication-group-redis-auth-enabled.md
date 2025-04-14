#  Amazon ElastiCache for Redis replication groups should have auth token set when redis version is belxow 6.0

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Storage      |

## Description

This control checks if ElastiCache for Redis replication groups have Redis AUTH enabled. The control fails for an ElastiCache for Redis replication group if the Redis version of its nodes is below 6.0 and AuthToken isn't in use.

This rule is covered by the [elasticache-redis-replication-group-redis-auth-enabled](../../policies/elasticache/elasticache-redis-replication-group-redis-auth-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - elasticache-redis-replication-group-redis-auth-enabled.sentinel

      Description:
        This policy requires that the `aws_elasticache_replication_group` resource
        with `engine_version`
        less than 6.0 has `auth_token` set.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy elasticache-redis-replication-group-encryption-at-rest-enabled.

      ✓ Found 0 resource violations

      elasticache-redis-replication-group-redis-auth-enabled.sentinel:60:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - elasticache-redis-replication-group-redis-auth-enabled.sentinel

    Description:
      This policy requires that the `aws_elasticache_replication_group` resource
      with `engine_version`
      less than 6.0 has `auth_token` set.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elasticache-redis-replication-group-redis-auth-enabled.

    Found 1 resource violations

    → Module name: root
      ↳ Resource Address: aws_elasticache_replication_group.example
        | ✗ failed
        | Attribute 'auth_token' must be set when attribute 'engine_version' < 6.0 for 'aws_elasticache_replication_group' resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elasticache-controls.html#elasticache-6 for more details.


    elasticache-redis-replication-group-redis-auth-enabled.sentinel:60:1 - Rule "main"
      Value:
        false
```

---