# KMS restrict IAM inline policies decrypt all KMS keys

| Provider            | Category |
|---------------------|----------|
| Amazon Web Services | Security |

## Description

This control checks whether the inline policies that are embedded in your IAM identities (role, user, or group) allow the AWS KMS decryption and re-encryption actions on all KMS keys. The control fails if the policy is open enough to allow kms:Decrypt or kms:ReEncryptFrom actions on all KMS keys.

The control only checks KMS keys in the Resource element that you create with the `aws_iam_policy_document` datasource and doesn't take into account any conditionals in the Condition element of a policy.

With AWS KMS, you control who can use your KMS keys and gain access to your encrypted data. IAM policies define which actions an identity (user, group, or role) can perform on which resources. Following security best practices, AWS recommends that you allow least privilege. In other words, you should grant to identities only the permissions they need and only for keys that are required to perform a task. Otherwise, the user might use keys that are not appropriate for your data.

Instead of granting permission for all keys, determine the minimum set of keys that users need to access encrypted data. Then design policies that allow the users to use only those keys. For example, do not allow kms:Decrypt permission on all KMS keys. Instead, allow the permission only on specific keys in a specific Region for your account. By adopting the principle of least privilege, you can reduce the risk of unintended disclosure of your data.

This rule is covered by the [kms-restrict-iam-inline-policies-decrypt-all-kms-keys](../../policies/kms/kms-restrict-iam-inline-policies-decrypt-all-kms-keys.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - kms-restrict-iam-inline-policies-decrypt-all-kms-keys.sentinel

    Description:
    This policy checks if resources of type 'aws_iam_policy_document'
    contain blocked action patterns such as 'kms:ReEncryptFrom' and 'kms:Decrypt'

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy kms-restrict-iam-inline-policies-decrypt-all-kms-keys.

    ✓ Found 0 resource violations

    kms-restrict-iam-inline-policies-decrypt-all-kms-keys.sentinel:55:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - kms-restrict-iam-inline-policies-decrypt-all-kms-keys.sentinel

    Description:
    This policy checks if resources of type 'aws_iam_policy_document'
    contain blocked action patterns such as 'kms:ReEncryptFrom' and 'kms:Decrypt'

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy kms-restrict-iam-inline-policies-decrypt-all-kms-keys.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_iam_policy.example
        | ✗ failed
        | Actions 'kms:ReEncryptFrom' and 'kms:Decrypt' must not be allowed on all 'KMS keys'. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/kms-controls.html#kms-2 for more details.


    kms-restrict-iam-inline-policies-decrypt-all-kms-keys.sentinel:55:1 - Rule "main"
    Value:
        false
```

---