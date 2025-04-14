# Access logging should be configured for API Gateway V2 Stages

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Logging      |

## Description

This control checks if Amazon API Gateway V2 stages have access logging configured. This control fails if access log settings aren't defined.

API Gateway access logs provide detailed information about who has accessed your API and how the caller accessed the API. These logs are useful for applications such as security and access audits and forensics investigation. Enable these access logs to analyze traffic patterns and to troubleshoot issues.

This rule is covered by the [api-gateway-access-logging-should-be-configured](../../policies/api-gateway/api-gateway-access-logging-should-be-configured.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - api-gateway-access-logging-should-be-configured.sentinel

      Description:
        This policy checks if 'aws_apigatewayv2_stage' have access logging configured.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy api-gateway-access-logging-should-be-configured.

      ✓ Found 0 resource violations

      api-gateway-access-logging-should-be-configured.sentinel:47:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - api-gateway-access-logging-should-be-configured.sentinel

      Description:
        This policy checks if 'aws_apigatewayv2_stage' have access logging configured.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy api-gateway-access-logging-should-be-configured.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_apigatewayv2_stage.example
          | ✗ failed
          | 'aws_apigatewayv2_stage' have access logging configured. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/apigateway-controls.html#apigateway-9 for more details.


      api-gateway-access-logging-should-be-configured.sentinel:47:1 - Rule "main"
        Value:
          false
```

---