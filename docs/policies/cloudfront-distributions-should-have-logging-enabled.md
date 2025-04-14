# CloudFront distributions should have logging enabled

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Logging      | 

## Description

This control checks whether server access logging is enabled on CloudFront distributions. The control fails if access logging is not enabled for a distribution.

CloudFront access logs provide detailed information about every user request that CloudFront receives. Each log contains information such as the date and time the request was received, the IP address of the viewer that made the request, the source of the request, and the port number of the request from the viewer.

These logs are useful for applications such as security and access audits and forensics investigation. For additional guidance on how to analyze access logs, see Querying Amazon CloudFront logs in the Amazon Athena User Guide.

This rule is covered by the [cloudfront-distributions-should-have-logging-enabled](../../policies/cloudfront/cloudfront-distributions-should-have-logging-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - cloudfront-distributions-should-have-logging-enabled.sentinel

      Description:
        This control checks whether server access logging is enabled on
        'aws_cloudfront_distribution'.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy cloudfront-distributions-should-have-origin-failover-configured.

      ✓ Found 0 resource violations

      cloudfront-distributions-should-have-logging-enabled.sentinel:48:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - cloudfront-distributions-should-have-logging-enabled.sentinel

      Description:
        This control checks whether server access logging is enabled on
        'aws_cloudfront_distribution'.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy cloudfront-distributions-should-have-origin-failover-configured.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_cloudfront_distribution.s3_distribution
          | ✗ failed
          | server access logging is enabled on 'aws_cloudfront_distribution'. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/cloudfront-controls.html#cloudfront-5 for more details.


      cloudfront-distributions-should-have-logging-enabled.sentinel:48:1 - Rule "main"
        Value:
          false
```

---