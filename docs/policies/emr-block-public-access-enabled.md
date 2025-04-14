#  Amazon EMR block public access setting should be enabled

| Provider            | Category                    |
|---------------------|-----------------------------|
| Amazon Web Services | Big Data and Analytics      |

## Description

This control checks whether your account is configured with Amazon EMR block public access. The control fails if the block public access setting isn't enabled or if any port other than port 22 is allowed.

This rule is covered by the [emr-block-public-access-enabled](../../policies/emr/emr-block-public-access-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - emr-block-public-access-enabled.sentinel

    Description:
    This policy requires block public access setting is enabled and any port other
    than 22 should not be allowed

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy emr-block-public-access-enabled.

    ✓ Found 0 resource violations

    emr-block-public-access-enabled.sentinel:48:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - emr-block-public-access-enabled.sentinel

    Description:
    This policy requires block public access setting is enabled and any port other
    than 22 should not be allowed

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy emr-block-public-access-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_emr_block_public_access_configuration.example
        | ✗ failed
        | Attribute 'block_public_security_group_rules' must have been set to true and any port other than 22 should not be allowed for 'aws_emr_block_public_access_configuration' resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/emr-controls.html#emr-2 for more details.


    emr-block-public-access-enabled.sentinel:48:1 - Rule "main"
    Value:
        false
```

---