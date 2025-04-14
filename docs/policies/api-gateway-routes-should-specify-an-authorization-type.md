# API Gateway routes should specify an authorization type

| Provider            | Category                 |
|---------------------|--------------------------|
| Amazon Web Services | Secure Access Management |

## Description

This control checks if Amazon API Gateway routes have an authorization type. The control fails if the API Gateway route doesn't have any authorization type. Optionally, you can provide a custom parameter value if you want the control to pass only if the route uses the authorization type specified in the authorizationType parameter.

API Gateway supports multiple mechanisms for controlling and managing access to your API. By specifying an authorization type, you can restrict access to your API to only authorized users or processes.

This rule is covered by the [api-gateway-routes-should-specify-an-authorization-type](../../policies/api-gateway/api-gateway-routes-should-specify-an-authorization-type.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - api-gateway-routes-should-specify-an-authorization-type.sentinel

      Description:
        This policy checks if 'aws_apigatewayv2_route' have an authorization type.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy api-gateway-routes-should-specify-an-authorization-type.

      ✓ Found 0 resource violations

      api-gateway-routes-should-specify-an-authorization-type.sentinel:47:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - api-gateway-routes-should-specify-an-authorization-type.sentinel

      Description:
        This policy checks if 'aws_apigatewayv2_route' have an authorization type.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy api-gateway-routes-should-specify-an-authorization-type.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_apigatewayv2_route.example
          | ✗ failed
          | API Gateway routes should specify an authorization type for resource 'aws_apigatewayv2_route'. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/apigateway-controls.html#apigateway-8 for more details.


      api-gateway-routes-should-specify-an-authorization-type.sentinel:47:1 - Rule "main"
        Value:
          false
```

---