# Elasticsearch domains should be configured with at least three dedicated master nodes

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether Elasticsearch domains are configured with at least three dedicated primary nodes. This control fails if the domain does not use dedicated primary nodes. This control passes if Elasticsearch domains have five dedicated primary nodes. However, using more than three primary nodes might be unnecessary to mitigate the availability risk, and will result in additional cost.

An Elasticsearch domain requires at least three dedicated primary nodes for high availability and fault-tolerance. Dedicated primary node resources can be strained during data node blue/green deployments because there are additional nodes to manage. Deploying an Elasticsearch domain with at least three dedicated primary nodes ensures sufficient primary node resource capacity and cluster operations if a node fails.

This rule is covered by the [elasticsearch-primary-node-fault-tolerance](../../policies/elasticsearch/elasticsearch-primary-node-fault-tolerance.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - elasticsearch-primary-node-fault-tolerance.sentinel

    Description:
    This policy requires resources of type `aws_elasticsearch_domain` have the
    `dedicated_master_count` atleast 3 and 'dedicated_master_enabled' set to true
    for `cluster_config` attribute.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy elasticsearch-primary-node-fault-tolerance.

    ✓ Found 0 resource violations

    elasticsearch-primary-node-fault-tolerance.sentinel:62:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
    Fail - elasticsearch-primary-node-fault-tolerance.sentinel

    Description:
    This policy requires resources of type `aws_elasticsearch_domain` have the
    `dedicated_master_count` atleast 3 and 'dedicated_master_enabled' set to true
    for `cluster_config` attribute.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elasticsearch-primary-node-fault-tolerance.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_elasticsearch_domain.example
        | ✗ failed
        | Attribute 'dedicated_master_count' must be atleast 3 and 'dedicated_master_enabled' set to true for the attribute 'cluster_config' for 'aws_elasticsearch_domain' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/es-controls.html#es-7 for more details.


    elasticsearch-primary-node-fault-tolerance.sentinel:62:1 - Rule "main"
    Value:
        false
```

---
