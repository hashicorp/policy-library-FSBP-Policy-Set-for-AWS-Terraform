# S3 access points should have block public access settings enabled

| Provider            |         Category         |
|---------------------| ------------------------ |
| Amazon Web Services | Secure Access Management |

## Description

This control checks whether an Amazon S3 access point has block public access settings enabled. The control fails if block public access settings aren't enabled for the access point.

The Amazon S3 Block Public Access feature helps you manage access to your S3 resources at three levels: the account, bucket, and access point levels. The settings at each level can be configured independently, allowing you to have different levels of public access restrictions for your data. The access point settings can't individually override the more restrictive settings at higher levels (account level or bucket assigned to the access point). Instead, the settings at the access point level are additive, meaning they complement and work alongside the settings at the other levels. Unless you intend an S3 access point to be publicly accessible, you should enable block public access settings.

This rule is covered by the [s3-access-point-block-public-access-enabled](../../policies/s3/s3-access-point-block-public-access-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
        Pass - s3-access-point-block-public-access-enabled.sentinel

        Description:
        This policy requires resources of type `aws_s3_access_point` to have all
        attributes
        in the `public_access_block_configuration` set to true.

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy s3-access-point-block-public-access-enabled.

        ✓ Found 0 resource violations

        s3-access-point-block-public-access-enabled.sentinel:62:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)
```bash
trace:
        Fail - s3-access-point-block-public-access-enabled.sentinel

        Description:
        This policy requires resources of type `aws_s3_access_point` to have all
        attributes
        in the `public_access_block_configuration` set to true.

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy s3-access-point-block-public-access-enabled.

        Found 1 resource violations

        → Module name: root
        ↳ Resource Address: aws_s3_access_point.example
            | ✗ failed
            | All attributes in 'public_access_block_configuration' must be set to true for 'aws_s3_access_point' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/s3-controls.html#s3-19 for more details.


        s3-access-point-block-public-access-enabled.sentinel:62:1 - Rule "main"
        Value:
            false
```

---