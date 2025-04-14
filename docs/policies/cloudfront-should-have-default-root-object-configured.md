# CloudFront distributions should have a default root object configured

| Provider            | Category                 |
|---------------------|--------------------------|
| Amazon Web Services | Secure Access Management |

## Description

This control checks whether an Amazon CloudFront distribution is configured to return a specific object that is the default root object. The control fails if the CloudFront distribution does not have a default root object configured.

A user might sometimes request the distribution's root URL instead of an object in the distribution. When this happens, specifying a default root object can help you to avoid exposing the contents of your web distribution.

This rule is covered by the [cloudfront-should-have-default-root-object-configured](../../policies/cloudfront/cloudfront-should-have-default-root-object-configured.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - cloudfront-should-have-default-root-object-configured.sentinel

      Description:
        This control checks whether an 'aws_cloudfront_distribution' is configured to
        return a specific object
        that is the default root object.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy cloudfront-should-have-default-root-object-configured.

      ✓ Found 0 resource violations

      cloudfront-should-have-default-root-object-configured.sentinel:49:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - cloudfront-should-have-default-root-object-configured.sentinel

      Description:
        This control checks whether an 'aws_cloudfront_distribution' is configured to
        return a specific object
        that is the default root object.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy cloudfront-should-have-default-root-object-configured.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_cloudfront_distribution.s3_distribution
          | ✗ failed
          | 'aws_cloudfront_distribution' is configured to return a default root object. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/cloudfront-controls.html#cloudfront-1 for more details.


      cloudfront-should-have-default-root-object-configured.sentinel:49:1 - Rule "main"
        Value:
          false
```

---