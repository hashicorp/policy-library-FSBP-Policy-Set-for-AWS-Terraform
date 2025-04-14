# API Gateway REST API cache data should be encrypted at rest

| Provider            | Category                   |
|---------------------|----------------------------|
| Amazon Web Services | Encryption of data at rest |

## Description

This control checks whether all methods in API Gateway REST API stages that have cache enabled are encrypted. The control fails if any method in an API Gateway REST API stage is configured to cache and the cache is not encrypted. Security Hub evaluates the encryption of a particular method only when caching is enabled for that method.

Encrypting data at rest reduces the risk of data stored on disk being accessed by a user not authenticated to AWS. It adds another set of access controls to limit unauthorized users ability access the data. For example, API permissions are required to decrypt the data before it can be read.

API Gateway REST API caches should be encrypted at rest for an added layer of security.

This rule is covered by the [api-gateway-rest-cache-have-encryption-enabled](../../policies/api-gateway/api-gateway-rest-cache-have-encryption-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - api-gateway-rest-cache-have-encryption-enabled.sentinel

      Description:
        This policy checks 'aws_api_gateway_method_settings' in API Gateway REST API
        stages that have cache enabled are encrypted.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy api-gateway-rest-cache-have-encryption-enabled.

      ✓ Found 0 resource violations

      api-gateway-rest-cache-have-encryption-enabled.sentinel:57:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - api-gateway-rest-cache-have-encryption-enabled.sentinel

      Description:
        This policy checks 'aws_api_gateway_method_settings' in API Gateway REST API
        stages that have cache enabled are encrypted.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy api-gateway-rest-cache-have-encryption-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_api_gateway_method_settings.path_specific
          | ✗ failed
          | API Gateway caching encryption can be enabled and configured to encrypt the cache data while at rest. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/apigateway-controls.html#apigateway-5 for more details.


      api-gateway-rest-cache-have-encryption-enabled.sentinel:57:1 - Rule "main"
        Value:
          false
```

---