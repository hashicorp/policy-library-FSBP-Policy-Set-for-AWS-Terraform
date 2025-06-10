# S3 Multi-Region Access Points should have block public access settings enabled

| Provider            | Category                     |
| ------------------- | ---------------------------- |
| Amazon Web Services | Secure network configuration |

## Description

This control checks whether an Amazon S3 Multi-Region Access Point has block public access settings enabled. The control fails when the Multi-Region Access Point doesn't have block public access settings enabled.

Publicly accessible resources can be lead to unauthorized access, data breaches, or exploitation of vulnerabilities. Restricting access through authentication and authorization measures helps to safeguard sensitive information and maintain the integrity of your resources.

This rule is covered by the [s3-multi-region-access-points-should-have-block-public-access-settings-enabled](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/s3/s3-multi-region-access-points-should-have-block-public-access-settings-enabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - s3-multi-region-access-points-should-have-block-public-access-settings-enabled.sentinel

      Description:
        This control checks whether an Amazon S3 Multi-Region Access Point has block
        public access settings enabled.

      Print messages:

      true
      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy s3-multi-region-access-points-should-have-block-public-access-settings-enabled.

      ✓ Found 0 resource violations

      s3-multi-region-access-points-should-have-block-public-access-settings-enabled.sentinel:111:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - s3-multi-region-access-points-should-have-block-public-access-settings-enabled.sentinel

      Description:
        This control checks whether an Amazon S3 Multi-Region Access Point has block
        public access settings enabled.

      Print messages:

      false
      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy s3-multi-region-access-points-should-have-block-public-access-settings-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_s3_bucket.bucket
          | ✗ failed
          | S3 Multi-Region Access Points should have block public access settings enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/s3-controls.html#s3-24 for more details.


      s3-multi-region-access-points-should-have-block-public-access-settings-enabled.sentinel:111:1 - Rule "main"
        Value:
          false
```

---
