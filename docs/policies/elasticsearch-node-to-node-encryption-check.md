# AWS Elasticsearch domain should be encrypt data between nodes

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether an Elasticsearch domain has node-to-node encryption enabled. The control fails if the Elasticsearch domain doesn't have node-to-node encryption enabled. The control also produces failed findings if an Elasticsearch version doesn't support node-to-node encryption checks.

HTTPS (TLS) can be used to help prevent potential attackers from eavesdropping on or manipulating network traffic using person-in-the-middle or similar attacks. Only encrypted connections over HTTPS (TLS) should be allowed. Enabling node-to-node encryption for Elasticsearch domains ensures that intra-cluster communications are encrypted in transit.

This rule is covered by the [elasticsearch-node-to-node-encryption-check](../../policies/elasticsearch/elasticsearch-node-to-node-encryption-check.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - elasticsearch-node-to-node-encryption-check.sentinel

    Description:
    This policy requires resources of type `aws_elasticsearch_domain` have the
    `enabled` value set to 'true' for `node_to_node_encrytion` attribute.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy elasticsearch-node-to-node-encryption-check.

    ✓ Found 0 resource violations

    elasticsearch-node-to-node-encryption-check.sentinel:49:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
    Fail - elasticsearch-node-to-node-encryption-check.sentinel

    Description:
    This policy requires resources of type `aws_elasticsearch_domain` have the
    `enabled` value set to 'true' for `node_to_node_encrytion` attribute.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elasticsearch-node-to-node-encryption-check.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_elasticsearch_domain.example
        | ✗ failed
        | Attribute 'enabled' must be set to true for the attribute 'node_to_node_encryption' for 'aws_elasticsearch_domain' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/es-controls.html#es-3 for more details.


    elasticsearch-node-to-node-encryption-check.sentinel:49:1 - Rule "main"
    Value:
        false
```

---
