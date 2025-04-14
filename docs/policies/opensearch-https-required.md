# Connections to AWS OpenSearch domains should be encrypted using the latest TLS security policy

| Provider            |             Category            |
| ------------------- |  -----------------------------  |
| Amazon Web Services |  Encryption of data-in-transit  |

## Description

This controls checks whether an Amazon OpenSearch Service domain endpoint is configured to use the latest TLS security policy. The control fails if the OpenSearch domain endpoint isn't configured to use the latest supported policy or if HTTPs isn't enabled.

HTTPS (TLS) can be used to help prevent potential attackers from using person-in-the-middle or similar attacks to eavesdrop on or manipulate network traffic. Only encrypted connections over HTTPS (TLS) should be allowed. Encrypting data in transit can affect performance. You should test your application with this feature to understand the performance profile and the impact of TLS. TLS 1.2 provides several security enhancements over previous versions of TLS.

This rule is covered by the [opensearch-https-required](../../policies/opensearch/opensearch-https-required.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - opensearch-https-required.sentinel

        Description:
        This policy requires resources of type `aws_opensearch_domain` have the
        `tls_security_policy` set to latest policy that is
        'Policy-Min-TLS-1-2-PFS-2023-10' and 'enforce_https' set to true for
        `domain_endpoint_options` attribute.

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy opensearch-https-required.

        ✓ Found 0 resource violations

        opensearch-https-required.sentinel:63:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - opensearch-https-required.sentinel

        Description:
        This policy requires resources of type `aws_opensearch_domain` have the
        `tls_security_policy` set to latest policy that is
        'Policy-Min-TLS-1-2-PFS-2023-10' and 'enforce_https' set to true for
        `domain_endpoint_options` attribute.

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy opensearch-https-required.

        Found 1 resource violations

        → Module name: root
        ↳ Resource Address: aws_opensearch_domain.example
            | ✗ failed
            | Attribute 'tls_security_policy' must be set to latest policy that is 'Policy-Min-TLS-1-2-PFS-2023-10' and 'enforce_https' set to true for the attribute 'domain_endpoint_options' for 'aws_opensearch_domain' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/opensearch-controls.html#opensearch-8 for more details.


        opensearch-https-required.sentinel:63:1 - Rule "main"
        Value:
            false
```

---
