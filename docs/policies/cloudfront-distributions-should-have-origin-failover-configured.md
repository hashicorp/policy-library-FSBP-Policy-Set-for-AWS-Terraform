# CloudFront distributions should have origin failover configured

| Provider            | Category          |
|---------------------|-------------------|
| Amazon Web Services | High availability |

## Description

This control checks whether an Amazon CloudFront distribution is configured with an origin group that has two or more origins.

CloudFront origin failover can increase availability. Origin failover automatically redirects traffic to a secondary origin if the primary origin is unavailable or if it returns specific HTTP response status codes.

This rule is covered by the [cloudfront-distributions-should-have-origin-failover-configured](../../policies/cloudfront/cloudfront-distributions-should-have-origin-failover-configured.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - cloudfront-distributions-should-have-origin-failover-configured.sentinel

      Description:
        This control checks whether an 'aws_cloudfront_distribution' is configured
        with an origin group that has two or more origins.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy cloudfront-distributions-should-have-origin-failover-configured.

      ✓ Found 0 resource violations

      cloudfront-distributions-should-have-origin-failover-configured.sentinel:52:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - cloudfront-distributions-should-have-origin-failover-configured.sentinel

      Description:
        This control checks whether an 'aws_cloudfront_distribution' is configured
        with an origin group that has two or more origins.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy cloudfront-distributions-should-have-origin-failover-configured.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_cloudfront_distribution.s3_distribution
          | ✗ failed
          | 'aws_cloudfront_distribution' is configured with an origin group that has two or more origins. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/cloudfront-controls.html#cloudfront-4 for more details.


      cloudfront-distributions-should-have-origin-failover-configured.sentinel:52:1 - Rule "main"
        Value:
          false
```

---