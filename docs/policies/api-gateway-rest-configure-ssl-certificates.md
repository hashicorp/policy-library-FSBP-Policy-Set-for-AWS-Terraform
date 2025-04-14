# API Gateway REST API stages should be configured to use SSL certificates for backend authentication

| Provider            | Category        |
|---------------------|-----------------|
| Amazon Web Services | Data Protection |

## Description

This control checks whether Amazon API Gateway REST API stages have SSL certificates configured. Backend systems use these certificates to authenticate that incoming requests are from API Gateway.

API Gateway REST API stages should be configured with SSL certificates to allow backend systems to authenticate that requests originate from API Gateway.

This rule is covered by the [api-gateway-rest-configure-ssl-certificates](../../policies/api-gateway/api-gateway-rest-configure-ssl-certificates.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - api-gateway-rest-configure-ssl-certificates.sentinel

      Description:
        This policy checks whether 'aws_api_gateway_stage' have SSL certificates
        configured.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy api-gateway-rest-configure-ssl-certificates.

      ✓ Found 0 resource violations

      api-gateway-rest-configure-ssl-certificates.sentinel:47:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - api-gateway-rest-configure-ssl-certificates.sentinel

      Description:
        This policy checks whether 'aws_api_gateway_stage' have SSL certificates
        configured.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy api-gateway-rest-configure-ssl-certificates.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_api_gateway_stage.example
          | ✗ failed
          | SSL certificates should be configured for resource 'aws_api_gateway_stage' for backend authentication. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/apigateway-controls.html#apigateway-2 for more details.


      api-gateway-rest-configure-ssl-certificates.sentinel:47:1 - Rule "main"
        Value:
          false
```

---