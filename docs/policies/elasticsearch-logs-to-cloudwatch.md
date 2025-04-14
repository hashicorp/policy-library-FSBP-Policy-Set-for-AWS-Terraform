# Elasticsearch domain error logging to CloudWatch Logs should be enabled

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether Elasticsearch domains are configured to send error logs to CloudWatch Logs.

You should enable error logs for Elasticsearch domains and send those logs to CloudWatch Logs for retention and response. Domain error logs can assist with security and access audits, and can help to diagnose availability issues.

This rule is covered by the [elasticsearch-logs-to-cloudwatch](../../policies/elasticsearch/elasticsearch-logs-to-cloudwatch.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - elasticsearch-logs-to-cloudwatch.sentinel

    Description:
    This policy requires resources of type `aws_elasticsearch_domain` have the
    `log_publishing_options` should have 'enabled' attribute set to `true`.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy elasticsearch-logs-to-cloudwatch.

    ✓ Found 0 resource violations

    elasticsearch-logs-to-cloudwatch.sentinel:53:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
    Fail - elasticsearch-logs-to-cloudwatch.sentinel

    Description:
    This policy requires resources of type `aws_elasticsearch_domain` have the
    `log_publishing_options` should have 'enabled' attribute set to `true`.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elasticsearch-logs-to-cloudwatch.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_elasticsearch_domain.example
        | ✗ failed
        | Attribute 'enabled' must be set to true for the attribute 'log_publishing_options' for 'aws_elasticsearch_domain' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/es-controls.html#es-4 for more details.


    elasticsearch-logs-to-cloudwatch.sentinel:53:1 - Rule "main"
    Value:
        false
```

---
