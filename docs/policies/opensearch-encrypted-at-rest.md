# AWS OpenSearch Domain should have the enabled in encrypt_at_rest attribute set to true

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether OpenSearch domains have encryption-at-rest configuration enabled. The check fails if encryption at rest is not enabled.

For an added layer of security for sensitive data, you should configure your OpenSearch Service domain to be encrypted at rest. When you configure encryption of data at rest, AWS KMS stores and manages your encryption keys. To perform the encryption, AWS KMS uses the Advanced Encryption Standard algorithm with 256-bit keys (AES-256).

This rule is covered by the [opensearch-encrypted-at-rest](../../policies/opensearch/opensearch-encrypted-at-rest.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - opensearch-encrypted-at-rest.sentinel

        Description:
        This policy checks if resources of type 'aws_opensearch_domain' have the
        'enable' attribute set to true
        in the 'encrypt_at_rest' block

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy opensearch-encrypted-at-rest.

        ✓ Found 0 resource violations

        opensearch-encrypted-at-rest.sentinel:51:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - opensearch-encrypted-at-rest.sentinel

        Description:
        This policy checks if resources of type 'aws_opensearch_domain' have the
        'enable' attribute set to true
        in the 'encrypt_at_rest' block

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy opensearch-encrypted-at-rest.

        Found 1 resource violations

        → Module name: root
        ↳ Resource Address: aws_opensearch_domain.example
            | ✗ failed
            | Attribute 'enable' in 'encrypt_at_rest' should be true for AWS OpenSearch Domain. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/opensearch-controls.html#opensearch-1 for more details.


        opensearch-encrypted-at-rest.sentinel:51:1 - Rule "main"
        Value:
            false
```

---
