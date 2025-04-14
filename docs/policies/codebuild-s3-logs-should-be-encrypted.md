# CodeBuild S3 logs should be encrypted

| Provider            | Category        |
|---------------------|-----------------|
| Amazon Web Services | Data Protection |

## Description

This control checks if Amazon S3 logs for an AWS CodeBuild project are encrypted. The control fails if encryption is deactivated for S3 logs for a CodeBuild project.

Encryption of data at rest is a recommended best practice to add a layer of access management around your data. Encrypting the logs at rest reduces the risk that a user not authenticated by AWS will access the data stored on disk. It adds another set of access controls to limit the ability of unauthorized users to access the data.

This rule is covered by the [codebuild-s3-logs-should-be-encrypted](../../policies/codebuild/codebuild-s3-logs-should-be-encrypted.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - codebuild-s3-logs-should-be-encrypted.sentinel

      Description:
        This control checks if Amazon S3 logs for an 'aws_codebuild_project' are
        encrypted.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy codebuild-s3-logs-should-be-encrypted.

      ✓ Found 0 resource violations

      codebuild-s3-logs-should-be-encrypted.sentinel:55:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - codebuild-s3-logs-should-be-encrypted.sentinel

      Description:
        This control checks if Amazon S3 logs for an 'aws_codebuild_project' are
        encrypted.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy codebuild-s3-logs-should-be-encrypted.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_codebuild_project.example
          | ✗ failed
          | Amazon S3 logs for an 'aws_codebuild_project' should be encrypted. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/codebuild-controls.html#codebuild-3 for more details.


      codebuild-s3-logs-should-be-encrypted.sentinel:55:1 - Rule "main"
        Value:
          false
```

---