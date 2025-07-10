# Amazon SQS queues should be encrypted at rest

| Provider            |           Category          |
| ------------------- |  -------------------------  |
| Amazon Web Services |  Data Protection            |

## Description

This control checks whether an Amazon SNS topic is encrypted at rest using keys managed in AWS Key Management Service (AWS KMS). The controls fails if the SNS topic doesn't use a KMS key for server-side encryption (SSE). By default, SNS stores messages and files using disk encryption. To pass this control, you must choose to use a KMS key for encryption instead. This adds an additional layer of security and provides more access control flexibility.

Encrypting data at rest reduces the risk of data stored on disk being accessed by a user not authenticated to AWS. API permissions are required to decrypt the data before it can be read. We recommend encrypting SNS topics with KMS keys for an added layer of security.

This rule is covered by the [sns-topic-should-be-encrypted-at-rest](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/sns-topic-should-be-encrypted-at-rest.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - sns-topic-should-be-encrypted-at-rest.sentinel

        Description:
        This policy requires resources of type `aws_sns_topic` to be encrypted at
        rest.

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy sns-topic-should-be-encrypted-at-rest.

        ✓ Found 0 resource violations

        sns-topic-should-be-encrypted-at-rest.sentinel:52:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - sns-topic-should-be-encrypted-at-rest.sentinel

        Description:
        This policy requires resources of type `aws_sns_topic` to be encrypted at
        rest.

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy sns-topic-should-be-encrypted-at-rest.

        Found 1 resource violations

        → Module name: root
        ↳ Resource Address: aws_sns_topic.user_updates
            | ✗ failed
            | SNS topics should be encrypted at rest. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/sns-controls.html#sns-1 for more details.


        sns-topic-should-be-encrypted-at-rest.sentinel:52:1 - Rule "main"
        Value:
```

---
