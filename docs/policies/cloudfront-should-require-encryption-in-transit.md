# CloudFront distributions should require encryption in transit

| Provider            | Category        |
|---------------------|-----------------|
| Amazon Web Services | Data Protection |

## Description

This control checks whether an Amazon CloudFront distribution requires viewers to use HTTPS directly or whether it uses redirection. The control fails if ViewerProtocolPolicy is set to allow-all for defaultCacheBehavior or for cacheBehaviors.

HTTPS (TLS) can be used to help prevent potential attackers from using person-in-the-middle or similar attacks to eavesdrop on or manipulate network traffic. Only encrypted connections over HTTPS (TLS) should be allowed. Encrypting data in transit can affect performance. You should test your application with this feature to understand the performance profile and the impact of TLS.

This rule is covered by the [cloudfront-should-require-encryption-in-transit](../../policies/cloudfront/cloudfront-should-require-encryption-in-transit.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - cloudfront-should-require-encryption-in-transit.sentinel

      Description:
        This control checks whether an 'aws_cloudfront_distribution' requires viewers
        to use HTTPS directly or whether it uses redirection.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy cloudfront-should-require-encryption-in-transit.

      ✓ Found 0 resource violations

      cloudfront-should-require-encryption-in-transit.sentinel:49:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - cloudfront-should-require-encryption-in-transit.sentinel

      Description:
        This control checks whether an 'aws_cloudfront_distribution' requires viewers
        to use HTTPS directly or whether it uses redirection.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy cloudfront-should-require-encryption-in-transit.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_cloudfront_distribution.s3_distribution
          | ✗ failed
          | 'aws_cloudfront_distribution' requires viewers to use HTTPS directly or whether it uses redirection. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/cloudfront-controls.html#cloudfront-3 for more details.


      cloudfront-should-require-encryption-in-transit.sentinel:49:1 - Rule "main"
        Value:
          false
```

---