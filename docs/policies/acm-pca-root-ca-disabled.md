# AWS Private CA root certificate authority should be disabled

| Provider            |             Category           |
| ------------------- |  ----------------------------  |
| Amazon Web Services |  Secure network configuration  |

## Description

This control checks if AWS Private CA has a root certificate authority (CA) that is disabled. The control fails if the root CA is enabled.

With AWS Private CA, you can create a CA hierarchy that includes a root CA and subordinate CAs. You should minimize the use of the root CA for daily tasks, especially in production environments. The root CA should only be used to issue certificates for intermediate CAs. This allows the root CA to be stored out of harm's way while the intermediate CAs perform the daily task of issuing end-entity certificates.

This rule is covered by the [acm-pca-root-ca-disabled](../../policies/acm/acm-pca-root-ca-disabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - acm-pca-root-ca-disabled.sentinel

        Description:
        This policy checks if AWS ACM Private CA has a root certificate authority (CA)
        that is enabled.
        The control fails if the root CA is enabled with type 'ROOT'.

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy acm-private-ca-root-disabled.

        ✓ Found 0 resource violations

        acm-pca-root-ca-disabled.sentinel:49:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - acm-pca-root-ca-disabled.sentinel

        Description:
        This policy checks if AWS ACM Private CA has a root certificate authority (CA)
        that is enabled.
        The control fails if the root CA is enabled with type 'ROOT'.

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy acm-private-ca-root-disabled.

        Found 1 resource violations

        → Module name: root
        ↳ Resource Address: aws_acmpca_certificate_authority.example
            | ✗ failed
            | Root CA must be disabled for 'aws_acmpca_certificate_authority' resources. Enablement of root CA should be avoided in production. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/pca-controls.html#pca-1 for more details.


        acm-pca-root-ca-disabled.sentinel:49:1 - Rule "main"
        Value:
            false
```

---
