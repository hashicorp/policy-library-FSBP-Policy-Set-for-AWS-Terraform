# Elasticsearch domains should have audit logging enabled

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether Elasticsearch domains have audit logging enabled. This control fails if an Elasticsearch domain does not have audit logging enabled.

Audit logs are highly customizable. They allow you to track user activity on your Elasticsearch clusters, including authentication successes and failures, requests to OpenSearch, index changes, and incoming search queries.

This rule is covered by the [elasticsearch-audit-logging-enabled](../../policies/elasticsearch/elasticsearch-audit-logging-enabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - elasticsearch-audit-logging-enabled.sentinel

    Description:
    This policy requires resources of type `aws_elasticsearch_domain` have the
    `log_publishing_options` should have 'enabled' attribute set to `true` and
    'log_type' set to 'AUDIT_LOGS'.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy elasticsearch-audit-logging-enabled.

    ✓ Found 0 resource violations

    elasticsearch-audit-logging-enabled.sentinel:55:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
    Fail - elasticsearch-audit-logging-enabled.sentinel

    Description:
    This policy requires resources of type `aws_elasticsearch_domain` have the
    `log_publishing_options` should have 'enabled' attribute set to `true` and
    'log_type' set to 'AUDIT_LOGS'.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elasticsearch-audit-logging-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_elasticsearch_domain.example
        | ✗ failed
        | Attribute 'enabled' must be set to true and attribute 'log_type' set to 'AUDIT_LOGS' or the attribute 'log_publishing_options' for 'aws_elasticsearch_domain' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/es-controls.html#es-5 for more details.


    elasticsearch-audit-logging-enabled.sentinel:55:1 - Rule "main"
    Value:
        false
```

---
