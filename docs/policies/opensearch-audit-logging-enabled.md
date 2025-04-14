# AWS OpenSearch should have the enabled in log_publisging_options attribute set to true and log_type set to 'AUDIT_LOGS'

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Logging  |

## Description

This control checks whether OpenSearch domains have audit logging enabled. This control fails if an OpenSearch domain does not have audit logging enabled.

Audit logs are highly customizable. They allow you to track user activity on your OpenSearch clusters, including authentication successes and failures, requests to OpenSearch, index changes, and incoming search queries.

This rule is covered by the [opensearch-audit-logging-enabled](../../policies/opensearch/opensearch-audit-logging-enabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - opensearch-audit-logging-enabled.sentinel

        Description:
        This policy checks if resources of type 'aws_opensearch_domain' have the
        'enable' attribute set to true and 'log_type' set to 'AUDIT_LOGS'
        in the 'log_publishing_options' block

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy opensearch-audit-logging-enabled.

        ✓ Found 0 resource violations

        opensearch-audit-logging-enabled.sentinel:55:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - opensearch-audit-logging-enabled.sentinel

        Description:
        This policy checks if resources of type 'aws_opensearch_domain' have the
        'enable' attribute set to true and 'log_type' set to 'AUDIT_LOGS'
        in the 'log_publishing_options' block

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy opensearch-audit-logging-enabled.

        Found 1 resource violations

        → Module name: root
        ↳ Resource Address: aws_opensearch_domain.example
            | ✗ failed
            | Attribute 'enable' in 'log_publishing_options' should be true and 'log_type' set to 'AUDIT_LOGS' for AWS OpenSearch Domain. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/opensearch-controls.html#opensearch-5 for more details.


        opensearch-audit-logging-enabled.sentinel:55:1 - Rule "main"
        Value:
            false
```

---
