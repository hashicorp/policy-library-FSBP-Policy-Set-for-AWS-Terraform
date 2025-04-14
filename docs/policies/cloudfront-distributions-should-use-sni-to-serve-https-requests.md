# CloudFront distributions should use SNI to serve HTTPS requests

| Provider            | Category                     |
|---------------------|------------------------------|
| Amazon Web Services | Secure network configuration |

## Description

This control checks if Amazon CloudFront distributions are using a custom SSL/TLS certificate and are configured to use SNI to serve HTTPS requests. This control fails if a custom SSL/TLS certificate is associated but the SSL/TLS support method is a dedicated IP address.

Server Name Indication (SNI) is an extension to the TLS protocol that is supported by browsers and clients released after 2010. If you configure CloudFront to serve HTTPS requests using SNI, CloudFront associates your alternate domain name with an IP address for each edge location. When a viewer submits an HTTPS request for your content, DNS routes the request to the IP address for the correct edge location. The IP address to your domain name is determined during the SSL/TLS handshake negotiation; the IP address isn't dedicated to your distribution.

This rule is covered by the [cloudfront-distributions-should-use-sni-to-serve-https-requests](../../policies/cloudfront/cloudfront-distributions-should-use-sni-to-serve-https-requests.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - cloudfront-distributions-should-use-sni-to-serve-https-requests.sentinel

      Description:
        This control checks whether 'aws_cloudfront_distribution' are using a custom
        SSL/TLS certificate and are configured to use SNI to serve HTTPS requests.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy cloudfront-distributions-should-use-sni-to-serve-https-requests.

      ✓ Found 0 resource violations

      cloudfront-distributions-should-use-sni-to-serve-https-requests.sentinel:49:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - cloudfront-distributions-should-use-sni-to-serve-https-requests.sentinel

      Description:
        This control checks whether 'aws_cloudfront_distribution' are using a custom
        SSL/TLS certificate and are configured to use SNI to serve HTTPS requests.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy cloudfront-distributions-should-use-sni-to-serve-https-requests.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_cloudfront_distribution.example
          | ✗ failed
          | 'aws_cloudfront_distribution' are using a custom SSL/TLS certificate and are configured to use SNI to serve HTTPS requests. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/cloudfront-controls.html#cloudfront-8 for more details.


      cloudfront-distributions-should-use-sni-to-serve-https-requests.sentinel:49:1 - Rule "main"
        Value:
          false
```

---