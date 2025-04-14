# AWS Elasticsearch domain should be encrypted at rest

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether Elasticsearch domains have encryption at rest configuration enabled. The check fails if encryption at rest is not enabled.

For an added layer of security for your sensitive data in OpenSearch, you should configure your OpenSearch to be encrypted at rest. Elasticsearch domains offer encryption of data at rest. The feature uses AWS KMS to store and manage your encryption keys. To perform the encryption, it uses the Advanced Encryption Standard algorithm with 256-bit keys (AES-256).

This rule is covered by the [elasticsearch-encrypted-at-rest](../../policies/elasticsearch/elasticsearch-encrypted-at-rest.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - elasticsearch-encrypted-at-rest.sentinel

    Description:
    This policy requires resources of type `aws_elasticsearch_domain` have the
    `encrypt_at_rest` should have 'enabled' attribute set to `true`.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy elasticsearch-encrypted-at-rest.

    ✓ Found 0 resource violations

    elasticsearch-encrypted-at-rest.sentinel:50:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
    Fail - elasticsearch-encrypted-at-rest.sentinel

    Description:
    This policy requires resources of type `aws_elasticsearch_domain` have the
    `encrypt_at_rest` should have 'enabled' attribute set to `true`.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elasticsearch-encrypted-at-rest.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_elasticsearch_domain.example
        | ✗ failed
        | Attribute 'enabled' must be set to true for the attribute 'encrypt_at_rest' for 'aws_ebs_volume' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/es-controls.html#es-1 for more details.


    elasticsearch-encrypted-at-rest.sentinel:50:1 - Rule "main"
    Value:
        false
```

---
