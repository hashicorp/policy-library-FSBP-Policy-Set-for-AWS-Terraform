# S3 general purpose bucket policies should restrict access to other AWS accounts

| Provider            |           Category          |
|---------------------| --------------------------- |
| Amazon Web Services | Secure Access Configuration |

## Description

This control checks whether an Amazon S3 general purpose bucket policy prevents principals from other AWS accounts from performing denied actions on resources in the S3 bucket. The control fails if the bucket policy allows one or more of the preceding actions for a principal in another AWS account.

Implementing least privilege access is fundamental to reducing security risk and the impact of errors or malicious intent. If an S3 bucket policy allows access from external accounts, it could result in data exfiltration by an insider threat or an attacker.

This rule is covered by the [s3-bucket-policy-restrict-access-to-other-accounts](../../policies/s3/s3-bucket-policy-restrict-access-to-other-accounts.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
        Pass - s3-bucket-policy-restrict-access-to-other-accounts.sentinel

        Description:
        S3 general purpose bucket policies should restrict access to other AWS
        accounts

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy s3-bucket-policy-restrict-access-to-other-accounts.

        ✓ Found 0 resource violations

        s3-bucket-policy-restrict-access-to-other-accounts.sentinel:59:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)
```bash
trace:
        Fail - s3-bucket-policy-restrict-access-to-other-accounts.sentinel

        Description:
        S3 general purpose bucket policies should restrict access to other AWS accounts

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy s3-bucket-policy-restrict-access-to-other-accounts.

        Found 1 resource violations

        → Module name: root
        ↳ Resource Address: aws_iam_policy_document.policy
            | ✗ failed
            | S3 general purpose bucket policies should restrict access to other AWS accounts. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/s3-controls.html#s3-6 for more details.


        s3-bucket-policy-restrict-access-to-other-accounts.sentinel:110:1 - Rule "main"
        Value:
            false
```

---