# Ensure that S3 Buckets are configured with 'Block public access (bucket settings)'

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Storage      |

## Description

DISCLAIMER - This policy works when all resources are present in root module

Amazon S3 provides Block public access (bucket settings) and Block public access (account settings) to help you manage public access to Amazon S3 resources. By default, S3 buckets and objects are created with public access disabled. However, an IAM principal with sufficient S3 permissions can enable public access at the bucket and/or object level. While enabled, Block public access (bucket settings) prevents an individual bucket, and its contained objects, from becoming publicly accessible. Similarly, Block public access (account settings) prevents all buckets, and contained objects, from becoming publicly accessible across the entire account

This rule is covered by the [s3-block-public-access-bucket-level](../../policies/s3-block-public-access-bucket-level.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      s3-block-public-access-bucket-level.sentinel

      Description:
        This policy verifies if the attributes of the 'aws_s3_bucket_public_access_block' resource (if present) blocks public access of an S3 general purpose bucket.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy s3-block-public-access-bucket-level.

      ✓ Found 0 resource violations

      s3-block-public-access-bucket-level.sentinel:71:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      s3-block-public-access-bucket-level.sentinel

      Description:
        This policy verifies if the attributes of the 'aws_s3_bucket_public_access_block' resource (if present) blocks public access of an S3 general purpose bucket.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy s3-block-public-access-bucket-level.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_s3_bucket.example
          | ✗ failed
          | Account level Amazon S3 block public access settings are not compliant. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/s3-controls.html#s3-8 for more details.


      s3-block-public-access-bucket-level.sentinel:71:1 - Rule "main"
        Value:
          false
```

---