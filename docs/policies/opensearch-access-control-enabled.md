# AWS OpenSearch domains should have fine-grained access control enabled

| Provider            |               Category             |
| ------------------- |  --------------------------------  |
| Amazon Web Services |  Sensitive API actions restricted  |

## Description

This control checks whether OpenSearch domains have fine-grained access control enabled. The control fails if the fine-grained access control is not enabled. Fine-grained access control requires advanced-security-optionsin the OpenSearch parameter update-domain-config to be enabled.

Fine-grained access control offers additional ways of controlling access to your data on Amazon OpenSearch Service.

This rule is covered by the [opensearch-access-control-enabled](../../policies/opensearch/opensearch-access-control-enabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - opensearch-access-control-enabled.sentinel

        Description:
        This policy checks if resources of type 'aws_opensearch_domain' have the
        'anonymous_auth_enabled' attribute set to true
        in the 'advanced_security_options' block

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy opensearch-logs-to-cloudwatch.

        ✓ Found 0 resource violations

        opensearch-access-control-enabled.sentinel:52:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - opensearch-access-control-enabled.sentinel

        Description:
        This policy checks if resources of type 'aws_opensearch_domain' have the
        'anonymous_auth_enabled' attribute set to true
        in the 'advanced_security_options' block

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy opensearch-logs-to-cloudwatch.

        Found 1 resource violations

        → Module name: root
        ↳ Resource Address: aws_opensearch_domain.example
            | ✗ failed
            | Attribute 'anonymous_auth_enabled' in 'advanced_security_options' should be true for AWS OpenSearch Domain. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/opensearch-controls.html#opensearch-7 for more details.


        opensearch-access-control-enabled.sentinel:52:1 - Rule "main"
        Value:
            false
```

---
