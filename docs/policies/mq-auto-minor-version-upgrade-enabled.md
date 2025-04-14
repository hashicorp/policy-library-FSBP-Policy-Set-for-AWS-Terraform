# AWS MQ Broker should have the auto_minor_version_upgrade attribute set to true

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether an Amazon MQ broker has automatic minor version upgrade enabled. The control fails if the broker doesn't have automatic minor version upgrade enabled.

As Amazon MQ releases and supports new broker engine versions, the changes are backward-compatible with an existing application and don't deprecate existing functionality. Automatic broker engine version updates protect you against security risks, help fix bugs, and improve functionality.

This rule is covered by the [mq-auto-minor-version-upgrade-enabled](../../policies/mq/mq-auto-minor-version-upgrade-enabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - mq-auto-minor-version-upgrade-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_mq_broker' have the
        'auto_minor_version_upgrade'
        attribute set to true

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy mq-auto-minor-version-upgrade-enabled.

      ✓ Found 0 resource violations

      mq-auto-minor-version-upgrade-enabled.sentinel:46:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - mq-auto-minor-version-upgrade-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_mq_broker' have the
        'auto_minor_version_upgrade'
        attribute set to true

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy mq-auto-minor-version-upgrade-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_mq_broker.example
          | ✗ failed
          | Attribute 'auto_minor_version_upgrade' should be true for AWS MQ Broker. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/mq-controls.html#mq-3 for more details.


      mq-auto-minor-version-upgrade-enabled.sentinel:46:1 - Rule "main"
        Value:
          false
```

---
