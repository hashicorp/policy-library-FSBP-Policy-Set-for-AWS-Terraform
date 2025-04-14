# AWS OpenSearch should have the instance count in cluster_config attribute greater than or equal to 3

| Provider            |      Category       |
| ------------------- |   --------------    |
| Amazon Web Services |  High Availability  |

## Description

This control checks whether OpenSearch domains are configured with at least three data nodes and zoneAwarenessEnabled is true. This control fails for an OpenSearch domain if instanceCount is less than 3 or zoneAwarenessEnabled is false.

An OpenSearch domain requires at least three data nodes for high availability and fault-tolerance. Deploying an OpenSearch domain with at least three data nodes ensures cluster operations if a node fails.

This rule is covered by the [opensearch-data-node-fault-tolerance](../../policies/opensearch/opensearch-data-node-fault-tolerance.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - opensearch-data-node-fault-tolerance.sentinel

        Description:
        This policy checks if resources of type 'aws_opensearch_domain' have the
        'instance_count' greater than or equal to 3
        in the 'cluster_config' block

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy opensearch-data-node-fault-tolerance.

        ✓ Found 0 resource violations

        opensearch-data-node-fault-tolerance.sentinel:55:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - opensearch-data-node-fault-tolerance.sentinel

        Description:
        This policy checks if resources of type 'aws_opensearch_domain' have the
        'instance_count' greater than or equal to 3
        in the 'cluster_config' block

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy opensearch-data-node-fault-tolerance.

        Found 1 resource violations

        → Module name: root
        ↳ Resource Address: aws_opensearch_domain.example
            | ✗ failed
            | Attribute 'instance_count' in 'cluster_config' should atleast 3 for AWS OpenSearch Domain. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/opensearch-controls.html#opensearch-6 for more details.


        opensearch-data-node-fault-tolerance.sentinel:55:1 - Rule "main"
        Value:
            false
```

---
