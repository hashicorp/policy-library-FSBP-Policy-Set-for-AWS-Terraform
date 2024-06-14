#  Amazon ElastiCache for Redis cluster should not use the default subnet group

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Storage      |

## Description

This control checks if ElastiCache clusters are configured with a custom subnet group.

This rule is covered by the [elasticache-redis-cluster-non-default-subnet-enabled](../../policies/elasticache-redis-cluster-non-default-subnet-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - elasticache-redis-cluster-non-default-subnet-enabled.sentinel

      Description:
        This policy requires that the `subnet_group_name` attribute of the
        `aws_elasticache_cluster` or `aws_elasticache_replication_group`
        resource is set.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy elasticache-redis-cluster-non-default-subnet-enabled.

      ✓ Found 0 resource violations

      elasticache-redis-cluster-non-default-subnet-enabled.sentinel:63:1 - Rule "main"
        Value:
          true

      elasticache-redis-cluster-non-default-subnet-enabled.sentinel:55:1 - Rule "aws_elasticache_cluster_rule"
        Value:
          true

      elasticache-redis-cluster-non-default-subnet-enabled.sentinel:59:1 - Rule "aws_elasticache_replication_group_rule"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - elasticache-redis-cluster-non-default-subnet-enabled.sentinel

      Description:
        This policy requires that the `subnet_group_name` attribute of the
        `aws_elasticache_cluster` or `aws_elasticache_replication_group`
        resource is set.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elasticache-redis-cluster-non-default-subnet-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_elasticache_cluster.example
          | ✗ failed
          | Attribute 'subnet_group_name' must be set for aws_elasticache_cluster resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elasticache-controls.html#elasticache-7 for more details.


      elasticache-redis-cluster-non-default-subnet-enabled.sentinel:63:1 - Rule "main"
        Value:
          false
```

---