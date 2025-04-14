# CloudFront distributions should not use deprecated SSL protocols between edge locations and custom origins

| Provider            | Category        |
|---------------------|-----------------|
| Amazon Web Services | Data Protection |

## Description

This control checks if Amazon CloudFront distributions are using deprecated SSL protocols for HTTPS communication between CloudFront edge locations and your custom origins. This control fails if a CloudFront distribution has a CustomOriginConfig where OriginSslProtocols includes SSLv3.

In 2015, the Internet Engineering Task Force (IETF) officially announced that SSL 3.0 should be deprecated due to the protocol being insufficiently secure. It is recommended that you use TLSv1.2 or later for HTTPS communication to your custom origins.

This rule is covered by the [cloudfront-distributions-should-not-use-deprecated-ssl-protocols](../../policies/cloudfront/cloudfront-distributions-should-not-use-deprecated-ssl-protocols.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - cloudfront-distributions-should-not-use-deprecated-ssl-protocols.sentinel

      Description:
        This control checks whether 'aws_cloudfront_distribution' are using deprecated
        SSL protocols for HTTPS communication between CloudFront edge locations and
        your custom origins.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy cloudfront-distributions-should-not-use-deprecated-ssl-protocols.

      ✓ Found 0 resource violations

      cloudfront-distributions-should-not-use-deprecated-ssl-protocols.sentinel:51:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - cloudfront-distributions-should-not-use-deprecated-ssl-protocols.sentinel

      Description:
        This control checks whether 'aws_cloudfront_distribution' are using deprecated
        SSL protocols for HTTPS communication between CloudFront edge locations and
        your custom origins.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy cloudfront-distributions-should-not-use-deprecated-ssl-protocols.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_cloudfront_distribution.example
          | ✗ failed
          | 'aws_cloudfront_distribution' are using deprecated SSL protocols for HTTPS communication between CloudFront edge locations and your custom origins. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/cloudfront-controls.html#cloudfront-10 for more details.


      cloudfront-distributions-should-not-use-deprecated-ssl-protocols.sentinel:51:1 - Rule "main"
        Value:
          false
```

---