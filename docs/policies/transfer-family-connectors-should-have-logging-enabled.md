# AWS Transfer Family connectors should have logging enabled

| Provider            | Category |
| ------------------- | -------- |
| Amazon Web Services | Logging  |

## Description

This control checks whether Amazon CloudWatch logging is enabled for an AWS Transfer Family connector. The control fails if CloudWatch logging isn't enabled for the connector.

Amazon CloudWatch is a monitoring and observability service that provides visibility into your AWS resources, including AWS Transfer Family resources. For Transfer Family, CloudWatch provides consolidated auditing and logging for workflow progress and results. This includes several metrics that Transfer Family defines for workflows. You can configure Transfer Family to automatically log connector events in CloudWatch. To do this, you specify a logging role for the connector. For the logging role, you create an IAM role and a resource-based IAM policy that defines the permissions for the role.

This rule is covered by the [transfer-family-connectors-should-have-logging-enabled](../../policies/transfer/transfer-family-connectors-should-have-logging-enabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - transfer-family-connectors-should-have-logging-enabled.sentinel

      Description:
        This control checks whether Amazon CloudWatch logging is enabled for an AWS
        Transfer Family connector.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy transfer-connector-logging-enabled.

      ✓ Found 0 resource violations

      transfer-family-connectors-should-have-logging-enabled.sentinel:70:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - transfer-family-connectors-should-have-logging-enabled.sentinel

      Description:
        This control checks whether Amazon CloudWatch logging is enabled for an AWS
        Transfer Family connector.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy transfer-connector-logging-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_transfer_connector.compliant_connector
          | ✗ failed
          | Transfer Family connectors should have logging enabled by setting the 'logging_role' attribute. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/transfer-controls.html#transfer-3 for more details.


      transfer-family-connectors-should-have-logging-enabled.sentinel:70:1 - Rule "main"
        Value:
          false
```

---
