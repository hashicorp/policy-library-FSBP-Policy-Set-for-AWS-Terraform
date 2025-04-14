# CloudFront distributions should use custom SSL/TLS certificates

| Provider            | Category        |
|---------------------|-----------------|
| Amazon Web Services | Data Protection |

## Description

This control checks whether CloudFront distributions are using the default SSL/TLS certificate CloudFront provides. This control passes if the CloudFront distribution uses a custom SSL/TLS certificate. This control fails if the CloudFront distribution uses the default SSL/TLS certificate.

Custom SSL/TLS allow your users to access content by using alternate domain names. You can store custom certificates in AWS Certificate Manager (recommended), or in IAM.

This rule is covered by the [cloudfront-distributions-should-use-custom-ssl-tsl-certificates](../../policies/cloudfront/cloudfront-distributions-should-use-custom-ssl-tsl-certificates.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - cloudfront-distributions-should-use-custom-ssl-tsl-certificates.sentinel

      Description:
        This control checks whether 'aws_cloudfront_distribution' are using the
        default SSL/TLS certificate CloudFront provides.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy cloudfront-distributions-should-use-custom-ssl-tsl-certificates.

      ✓ Found 0 resource violations

      cloudfront-distributions-should-use-custom-ssl-tsl-certificates.sentinel:49:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - cloudfront-distributions-should-use-custom-ssl-tsl-certificates.sentinel

      Description:
        This control checks whether 'aws_cloudfront_distribution' are using the
        default SSL/TLS certificate CloudFront provides.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy cloudfront-distributions-should-use-custom-ssl-tsl-certificates.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_cloudfront_distribution.s3_distribution
          | ✗ failed
          | 'aws_cloudfront_distribution' are using the default SSL/TLS certificate CloudFront provides. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/cloudfront-controls.html#cloudfront-7 for more details.


      cloudfront-distributions-should-use-custom-ssl-tsl-certificates.sentinel:49:1 - Rule "main"
        Value:
          false
```

---