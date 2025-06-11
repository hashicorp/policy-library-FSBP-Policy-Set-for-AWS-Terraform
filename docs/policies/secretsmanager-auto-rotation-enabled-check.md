# Secrets Manager secrets should have automatic rotation enabled

| Provider            |       Category       |
| ------------------- |  ------------------  |
| Amazon Web Services |  Secure Development  |

## Description

DISCLAIMER - This policy works when all resources of type aws_secretsmanager_secret and aws_secretsmanager_secret_rotation are present in the root module.

This control checks whether a secret stored in AWS Secrets Manager is configured with automatic rotation. The control fails if the secret isn't configured with automatic rotation. If you provide a custom value for the maximumAllowedRotationFrequency parameter, the control passes only if the secret is automatically rotated within the specified window of time.

Secrets Manager helps you improve the security posture of your organization. Secrets include database credentials, passwords, and third-party API keys. You can use Secrets Manager to store secrets centrally, encrypt secrets automatically, control access to secrets, and rotate secrets safely and automatically.

This rule is covered by the [secretsmanager-auto-rotation-enabled-check](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/secretsmanager/secretsmanager-auto-rotation-enabled-check.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - secretsmanager-auto-rotation-enabled-check.sentinel

        Description:
        This policy requires resources of type `aws_secretsmanager_secret` should be
        configured for automatic rotation.

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy secretsmanager-auto-rotation-enabled-check.

        ✓ Found 0 resource violations

        secretsmanager-auto-rotation-enabled-check.sentinel:68:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - secretsmanager-auto-rotation-enabled-check.sentinel
        
        Description:
        This policy requires resources of type `aws_secretsmanager_secret` should be
        configured for automatic rotation.

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy secretsmanager-auto-rotation-enabled-check.

        Found 1 resource violations

        → Module name: root
        ↳ Resource Address: aws_secretsmanager_secret.example
            | ✗ failed
            | Secrets Manager secrets should be configured for automatic rotation. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/secretsmanager-controls.html#secretsmanager-1 for more details.


        secretsmanager-auto-rotation-enabled-check.sentinel:68:1 - Rule "main"
        Value:
            false
```

---
