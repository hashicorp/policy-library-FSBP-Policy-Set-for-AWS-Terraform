# ECS clusters should use Container Insights

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Compute      |

## Description

This policy checks if ECS clusters use Container Insights. This policy fails if Container Insights are not set up for a cluster.

Monitoring is an important part of maintaining the reliability, availability, and performance of Amazon ECS clusters. Use CloudWatch Container Insights to collect, aggregate, and summarize metrics and logs from your containerized applications and microservices. CloudWatch automatically collects metrics for many resources, such as CPU, memory, disk, and network. Container Insights also provides diagnostic information, such as container restart failures, to help you isolate issues and resolve them quickly. You can also set CloudWatch alarms on metrics that Container Insights collects.

This rule is covered by the [ecs-cluster-enable-container-insights](../../policies/ecs-cluster-enable-container-insights.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - ecs-cluster-enable-container-insights.sentinel

      Description:
        This policy checks if the 'aws_ecs_cluster' has the setting named
        'containerInsights' enabled

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy ecs-cluster-enable-container-insights.

      ✓ Found 0 resource violations

      ecs-cluster-enable-container-insights.sentinel:49:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - ecs-cluster-enable-container-insights.sentinel

      Description:
        This policy checks if the 'aws_ecs_cluster' has the setting named
        'containerInsights' enabled

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ecs-cluster-enable-container-insights.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_ecs_cluster.this
          | ✗ failed
          | ECS clusters must have container insights enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ecs-policys.html#ecs-12 for more details.


      ecs-cluster-enable-container-insights.sentinel:48:1 - Rule "main"
        Value:
          false
```

---