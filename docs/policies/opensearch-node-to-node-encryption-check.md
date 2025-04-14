# AWS OpenSearch should have the enabled in node-to-node-encryption attribute set to true

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether OpenSearch domains have node-to-node encryption enabled. This control fails if node-to-node encryption is disabled on the domain.

HTTPS (TLS) can be used to help prevent potential attackers from eavesdropping on or manipulating network traffic using person-in-the-middle or similar attacks. Only encrypted connections over HTTPS (TLS) should be allowed. Enabling node-to-node encryption for OpenSearch domains ensures that intra-cluster communications are encrypted in transit.

This rule is covered by the [opensearch-node-to-node-encryption-check](../../policies/opensearch/opensearch-node-to-node-encryption-check.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - opensearch-node-to-node-encryption-check.sentinel

        Description:
        This policy checks if resources of type 'aws_opensearch_domain' have the
        'enable' attribute set to true
        in the 'node_to_node_encryption' block

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy opensearch-node-to-node-encryption-check.

        ✓ Found 0 resource violations

        opensearch-node-to-node-encryption-check.sentinel:51:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - opensearch-node-to-node-encryption-check.sentinel

        Description:
        This policy checks if resources of type 'aws_opensearch_domain' have the
        'enable' attribute set to true
        in the 'node_to_node_encryption' block

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy opensearch-node-to-node-encryption-check.

        Found 1 resource violations

        → Module name: root
        ↳ Resource Address: aws_opensearch_domain.example
            | ✗ failed
            | Attribute 'enable' in 'node_to_node_encryption' should be true for AWS OpenSearch Domain. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/opensearch-controls.html#opensearch-3 for more details.


        opensearch-node-to-node-encryption-check.sentinel:51:1 - Rule "main"
        Value:
            false
```

---
