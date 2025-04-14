# AWS OpenSearch domains should have the latest software update installed

| Provider            |       Category       |
| ------------------- |  ------------------  |
| Amazon Web Services |  Version management  |

## Description

This control checks whether an Amazon OpenSearch Service domain has the latest software update installed. The control fails if a software update is available but not installed for the domain.

OpenSearch Service software updates provide the latest platform fixes, updates, and features available for the environment. Keeping up-to-date with patch installation helps maintain domain security and availability. If no action is taken on required updates, the service software is updated automatically (typically after 2 weeks). We recommend scheduling updates during a time of low traffic to the domain to minimize service disruption.

This rule is covered by the [opensearch-update-check](../../policies/opensearch/opensearch-update-check.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - opensearch-update-check.sentinel

        Description:
        This policy checks if resources of type 'aws_opensearch_domain' have the
        'auto_software_update_enabled' attribute set to true
        in the 'software_update_options' block

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy opensearch-logs-to-cloudwatch.

        ✓ Found 0 resource violations

        opensearch-update-check.sentinel:51:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - opensearch-update-check.sentinel

        Description:
        This policy checks if resources of type 'aws_opensearch_domain' have the
        'auto_software_update_enabled' attribute set to true
        in the 'software_update_options' block

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy opensearch-logs-to-cloudwatch.

        Found 1 resource violations

        → Module name: root
        ↳ Resource Address: aws_opensearch_domain.example
            | ✗ failed
            | Attribute 'auto_software_update_enabled' in 'software_update_options' should be true for AWS OpenSearch Domain. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/opensearch-controls.html#opensearch-10 for more details.


        opensearch-update-check.sentinel:51:1 - Rule "main"
        Value:
            false
```

---
