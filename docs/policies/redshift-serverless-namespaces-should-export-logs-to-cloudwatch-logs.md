# AWS Redshift Serverless namespaces should export logs to CloudWatch Logs

| Provider            | Category |
| ------------------- | -------- |
| Amazon Web Services | Logging  |

## Description

This control checks whether an Amazon Redshift Serverless namespace is configured to export connection and user logs to Amazon CloudWatch Logs. The control fails if the Redshift Serverless namespace isn't configured to export the logs to CloudWatch Logs.

If you configure Amazon Redshift Serverless to export connection log (connectionlog) and user log (userlog) data to a log group in Amazon CloudWatch Logs, you can collect and store your log records in durable storage, which can support security, access, and availability reviews and audits. With CloudWatch Logs, you can also perform real-time analysis of log data and use CloudWatch to create alarms and review metrics.

This rule is covered by the [redshift-serverless-namespaces-should-export-logs-to-cloudwatch-logs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/redshiftserverless/redshift-serverless-namespaces-should-export-logs-to-cloudwatch-logs.sentinel) policy.

## Policy Results (Pass)

````bash
trace:
        Pass - redshift-serverless-namespaces-should-export-logs-to-cloudwatch-logs.sentinel

        Description:
            This control checks whether an Amazon Redshift Serverless namespace is
            configured to export connection and user logs to Amazon CloudWatch Logs.

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy redshift-serverless-namespaces-should-export-logs-to-cloudwatch-logs.

        ✓ Found 0 resource violations

        redshift-serverless-namespaces-should-export-logs-to-cloudwatch-logs.sentinel:55:1 - Rule "main"
            Value:
                true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - redshift-serverless-namespaces-should-export-logs-to-cloudwatch-logs.sentinel

        Description:
            This control checks whether an Amazon Redshift Serverless namespace is
            configured to export connection and user logs to Amazon CloudWatch Logs.

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy redshift-serverless-namespaces-should-export-logs-to-cloudwatch-logs.

        Found 1 resource violations

        → Module name: root
            ↳ Resource Address: aws_redshiftserverless_namespace.example
                | ✗ failed
                | Redshift Serverless namespaces should export logs to CloudWatch Logs. Both 'connectionlog' and 'userlog' should be configured. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/redshiftserverless-controls.html#redshiftserverless-6 for more details.


        redshift-serverless-namespaces-should-export-logs-to-cloudwatch-logs.sentinel:55:1 - Rule "main"
            Value:
                false
---
````
