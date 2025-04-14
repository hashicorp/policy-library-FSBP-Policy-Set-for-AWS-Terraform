# IAM customer managed policies that you create should not allow wildcard actions for services

| Provider            |         Category         |
| ------------------- | ------------------------ |
| Amazon Web Services | Secure Access Management |

## Description

This control checks whether the IAM identity-based policies that you create have Allow statements that use the * wildcard to grant permissions for all actions on any service. The control fails if any policy statement includes "Effect": "Allow" with "Action": "Service:*".

The control also fails if you use "Effect": "Allow" with "NotAction": "service:*". In that case, the NotAction element provides access to all of the actions in an AWS service, except for the actions specified in NotAction.

This rule is covered by the [iam-policy-no-statements-with-full-access](../../policies/iam/iam-policy-no-statements-with-full-access.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
        Pass - iam-policy-no-statements-with-full-access.sentinel

        Description:
        IAM customer managed policies that you create should not allow wildcard actions for services

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy iam-policy-no-statements-with-full-access.

        ✓ Found 0 resource violations

        iam-policy-no-statements-with-full-access.sentinel:53:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)
```bash
trace:
      iam-policy-no-statements-with-full-access.sentinel

      Description:
        IAM customer managed policies that you create should not allow wildcard actions for services

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed  for the policy iam-no-policies-attached-to-users.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_iam_policy_document.document
          | ✗ failed
          | IAM customer managed policies that you create should not allow wildcard actions for services. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/iam-controls.html#iam-21 for more details.


      iam-no-policies-attached-to-users.sentinel:37:1 - Rule "main"
        Value:
          false
```

---