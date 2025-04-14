# AWS OpenSearch should have the enabled in log_publisging_options attribute set to true

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Logging  |

## Description

This control checks whether OpenSearch domains are configured to send error logs to CloudWatch Logs. This control fails if error logging to CloudWatch is not enabled for a domain.

You should enable error logs for OpenSearch domains and send those logs to CloudWatch Logs for retention and response. Domain error logs can assist with security and access audits, and can help to diagnose availability issues.

This rule is covered by the [opensearch-logs-to-cloudwatch](../../policies/opensearch/opensearch-logs-to-cloudwatch.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - opensearch-logs-to-cloudwatch.sentinel

        Description:
        This policy checks if resources of type 'aws_opensearch_domain' have the
        'enable' attribute set to true
        in the 'log_publishing_options' block

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy opensearch-logs-to-cloudwatch.

        ✓ Found 0 resource violations

        opensearch-logs-to-cloudwatch.sentinel:53:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - opensearch-logs-to-cloudwatch.sentinel

        Description:
        This policy checks if resources of type 'aws_opensearch_domain' have the
        'enable' attribute set to true
        in the 'log_publishing_options' block

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy opensearch-logs-to-cloudwatch.

        Found 1 resource violations

        → Module name: root
        ↳ Resource Address: aws_opensearch_domain.example
            | ✗ failed
            | Attribute 'enable' in 'log_publishing_options' should be true for AWS OpenSearch Domain. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/opensearch-controls.html#opensearch-4 for more details.


        opensearch-logs-to-cloudwatch.sentinel:53:1 - Rule "main"
        Value:
            false
```

---
