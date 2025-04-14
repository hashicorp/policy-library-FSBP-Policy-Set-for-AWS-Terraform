# API Gateway should be associated with a WAF Web ACL

| Provider            | Category            |
|---------------------|---------------------|
| Amazon Web Services | Protective services |

## Description

This control checks whether an API Gateway stage uses an AWS WAF web access control list (ACL). This control fails if an AWS WAF web ACL is not attached to a REST API Gateway stage.

AWS WAF is a web application firewall that helps protect web applications and APIs from attacks. It enables you to configure an ACL, which is a set of rules that allow, block, or count web requests based on customizable web security rules and conditions that you define. Ensure that your API Gateway stage is associated with an AWS WAF web ACL to help protect it from malicious attacks.

This rule is covered by the [api-gateway-should-be-associated-with-a-waf-web-acl](../../policies/api-gateway/api-gateway-should-be-associated-with-a-waf-web-acl.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - api-gateway-should-be-associated-with-a-waf-web-acl.sentinel

      Description:
        This policy checks whether an 'aws_api_gateway_stage' uses
        'aws_wafv2_web_acl_association'.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy api-gateway-should-be-associated-with-a-waf-web-acl.

      ✓ Found 0 resource violations

      api-gateway-should-be-associated-with-a-waf-web-acl.sentinel:54:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - api-gateway-should-be-associated-with-a-waf-web-acl.sentinel

      Description:
        This policy checks whether an 'aws_api_gateway_stage' uses
        'aws_wafv2_web_acl_association'.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy api-gateway-should-be-associated-with-a-waf-web-acl.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_wafv2_web_acl_association.example_association
          | ✗ failed
          | 'aws_api_gateway_stage' should be associated with a 'aws_wafv2_web_acl_association'. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/apigateway-controls.html#apigateway-4 for more details.


      api-gateway-should-be-associated-with-a-waf-web-acl.sentinel:54:1 - Rule "main"
        Value:
          false
```

---