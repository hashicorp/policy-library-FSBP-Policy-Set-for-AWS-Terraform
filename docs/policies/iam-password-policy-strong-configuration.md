# Password policies for IAM users should have strong configurations

| Provider            |         Category         |
| ------------------- | ------------------------ |
| Amazon Web Services | Secure Access Management |

## Description

This control checks whether the account password policy for IAM users uses strong configurations. The control fails if the password policy doesn't use strong configurations. Unless you provide custom parameter values, Security Hub uses the default values mentioned in the preceding table. The PasswordReusePrevention and MaxPasswordAge parameters have no default value, so if you exclude these parameters, Security Hub ignores number of password rotations and password age when evaluating this control.

This rule is covered by the [iam-password-policy-strong-configuration](../../policies/iam/iam-password-policy-strong-configuration.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
        Pass - iam-password-policy-strong-configuration.sentinel

        Description:
        This policy requires that the `aws_iam_account_password_policy` resource
        have the strong configurations

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy iam-password-uppercase.

        ✓ Found 0 resource violations

        iam-password-policy-strong-configuration.sentinel:101:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)
```bash
trace:
        Fail - iam-password-policy-strong-configuration.sentinel

        Description:
        This policy requires that the `aws_iam_account_password_policy` resource
        have the strong configurations

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy iam-password-uppercase.

        Found 1 resource violations

        → Module name: root
        ↳ Resource Address: aws_iam_account_password_policy.policy
            | ✗ failed
            | Resource 'aws_iam_account_password_policy' must have strong configuration. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/iam-controls.html#iam-7 for more details.


        iam-password-policy-strong-configuration.sentinel:101:1 - Rule "main"
        Value:
            false
```

---