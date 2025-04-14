# API Gateway REST and WebSocket API execution logging should be enabled

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Logging      |

## Description

This control checks whether all stages of an Amazon API Gateway REST or WebSocket API have logging enabled. The control fails if the loggingLevel isn't ERROR or INFO for all stages of the API. Unless you provide custom parameter values to indicate that a specific log type should be enabled, Security Hub produces a passed finding if the logging level is either ERROR or INFO.

API Gateway REST or WebSocket API stages should have relevant logs enabled. API Gateway REST and WebSocket API execution logging provides detailed records of requests made to API Gateway REST and WebSocket API stages. The stages include API integration backend responses, Lambda authorizer responses, and the requestId for AWS integration endpoints.

This rule is covered by the [api-gateway-rest-and-websocket-api-logging-enabled](../../policies/api-gateway/api-gateway-rest-and-websocket-api-logging-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - api-gateway-rest-and-websocket-api-logging-enabled.sentinel

      Description:
        This policy checks for resource type of 'aws_api_gateway_method_settings'
        whether all stages
        of an Amazon API Gateway REST or WebSocket API have logging enabled.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy api-gateway-rest-and-websocket-api-logging-enabled.

      ✓ Found 0 resource violations

      api-gateway-rest-and-websocket-api-logging-enabled.sentinel:54:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - api-gateway-rest-and-websocket-api-logging-enabled.sentinel

      Description:
        This policy checks for resource type of 'aws_api_gateway_method_settings'
        whether all stages
        of an Amazon API Gateway REST or WebSocket API have logging enabled.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy api-gateway-rest-and-websocket-api-logging-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_api_gateway_method_settings.all
          | ✗ failed
          | Logging should be enabled for resource 'aws_api_gateway_method_settings' at all stages of Amazon API Gateway REST or WebSocket API. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/apigateway-controls.html#apigateway-1 for more details.


      api-gateway-rest-and-websocket-api-logging-enabled.sentinel:54:1 - Rule "main"
        Value:
          false
```

---