# CloudFront distributions should encrypt traffic to custom origins

| Provider            | Category        |
|---------------------|-----------------|
| Amazon Web Services | Data Protection |

## Description

This control checks if Amazon CloudFront distributions are encrypting traffic to custom origins. This control fails for a CloudFront distribution whose origin protocol policy allows 'http-only'. This control also fails if the distribution's origin protocol policy is 'match-viewer' while the viewer protocol policy is 'allow-all'.

HTTPS (TLS) can be used to help prevent eavesdropping or manipulation of network traffic. Only encrypted connections over HTTPS (TLS) should be allowed.

This rule is covered by the [cloudfront-distributions-should-encrypt-traffic-to-custom-origins](../../policies/cloudfront/cloudfront-distributions-should-encrypt-traffic-to-custom-origins.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - cloudfront-distributions-should-encrypt-traffic-to-custom-origins.sentinel

      Description:
        This control checks whether 'aws_cloudfront_distribution' are encrypting
        traffic to custom origins.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy cloudfront-distributions-should-encrypt-traffic-to-custom-origins.

      ✓ Found 0 resource violations

      cloudfront-distributions-should-encrypt-traffic-to-custom-origins.sentinel:57:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - cloudfront-distributions-should-encrypt-traffic-to-custom-origins.sentinel

      Description:
        This control checks whether 'aws_cloudfront_distribution' are encrypting
        traffic to custom origins.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy cloudfront-distributions-should-encrypt-traffic-to-custom-origins.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_cloudfront_distribution.example
          | ✗ failed
          | 'aws_cloudfront_distribution' are encrypting traffic to custom origins. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/cloudfront-controls.html#cloudfront-9 for more details.


      cloudfront-distributions-should-encrypt-traffic-to-custom-origins.sentinel:57:1 - Rule "main"
        Value:
          false
```

---