# Connections to Elasticsearch domains should be encrypted using the latest TLS security policy

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This controls checks whether an Elasticsearch domain endpoint is configured to use the latest TLS security policy. The control fails if the Elasticsearch domain endpoint isn't configured to use the latest supported policy or if HTTPs isn't enabled. The current latest supported TLS security policy is Policy-Min-TLS-1-2-PFS-2023-10.

HTTPS (TLS) can be used to help prevent potential attackers from using person-in-the-middle or similar attacks to eavesdrop on or manipulate network traffic. Only encrypted connections over HTTPS (TLS) should be allowed. Encrypting data in transit can affect performance. You should test your application with this feature to understand the performance profile and the impact of TLS. TLS 1.2 provides several security enhancements over previous versions of TLS.

This rule is covered by the [elasticsearch-https-required](../../policies/elasticsearch/elasticsearch-https-required.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - elasticsearch-https-required.sentinel

    Description:
    This policy requires resources of type `aws_elasticsearch_domain` have the
    `tls_security_policy` set to latest policy that is
    'Policy-Min-TLS-1-2-PFS-2023-10' and 'enforce_https' set to true for
    `domain_endpoint_options` attribute.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy elasticsearch-https-required.

    ✓ Found 0 resource violations

    elasticsearch-https-required.sentinel:63:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
    Fail - elasticsearch-https-required.sentinel

    Description:
    This policy requires resources of type `aws_elasticsearch_domain` have the
    `tls_security_policy` set to latest policy that is
    'Policy-Min-TLS-1-2-PFS-2023-10' and 'enforce_https' set to true for
    `domain_endpoint_options` attribute.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elasticsearch-https-required.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_elasticsearch_domain.example
        | ✗ failed
        | Attribute 'tls_security_policy' must be set to latest policy that is 'Policy-Min-TLS-1-2-PFS-2023-10' and 'enforce_https' set to true for the attribute 'domain_endpoint_options' for 'aws_elasticsearch_domain' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/es-controls.html#es-8 for more details.


    elasticsearch-https-required.sentinel:63:1 - Rule "main"
    Value:
        false
```

---
