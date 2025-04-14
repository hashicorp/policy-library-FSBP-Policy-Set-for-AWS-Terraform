# API Gateway REST API stages should have AWS X-Ray tracing enabled

| Provider            | Category           |
|---------------------|--------------------|
| Amazon Web Services | Detection services |

## Description

This control checks whether AWS X-Ray active tracing is enabled for your Amazon API Gateway REST API stages.

X-Ray active tracing enables a more rapid response to performance changes in the underlying infrastructure. Changes in performance could result in a lack of availability of the API. X-Ray active tracing provides real-time metrics of user requests that flow through your API Gateway REST API operations and connected services.

This rule is covered by the [api-gateway-rest-have-x-ray-tracing-enabled](../../policies/api-gateway/api-gateway-rest-have-x-ray-tracing-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - api-gateway-rest-have-x-ray-tracing-enabled.sentinel

      Description:
        This policy checks whether AWS X-Ray active tracing is enabled
        for your resource 'aws_api_gateway_stage'.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy api-gateway-rest-have-x-ray-tracing-enabled.

      ✓ Found 0 resource violations

      api-gateway-rest-have-x-ray-tracing-enabled.sentinel:47:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - api-gateway-rest-have-x-ray-tracing-enabled.sentinel

      Description:
        This policy checks whether AWS X-Ray active tracing is enabled
        for your resource 'aws_api_gateway_stage'.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy api-gateway-rest-have-x-ray-tracing-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_api_gateway_stage.example
          | ✗ failed
          | AWS X-Ray active tracing is enabled for resource 'aws_api_gateway_stage'. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/apigateway-controls.html#apigateway-3 for more details.


      api-gateway-rest-have-x-ray-tracing-enabled.sentinel:47:1 - Rule "main"
        Value:
          false
```

---