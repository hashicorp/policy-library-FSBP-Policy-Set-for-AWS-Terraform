# GuardDuty should be enabled

| Provider            | Category           |
|---------------------|--------------------|
| Amazon Web Services | Detection services |

## Description

This control checks whether Amazon GuardDuty is enabled in your GuardDuty account and Region.

It is highly recommended that you enable GuardDuty in all supported AWS Regions. Doing so allows GuardDuty to generate findings about unauthorized or unusual activity, even in Regions that you do not actively use. This also allows GuardDuty to monitor CloudTrail events for global AWS services such as IAM.

This rule is covered by the [guardduty-should-be-enabled](../../policies/guardduty/guardduty-should-be-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - guardduty-should-be-enabled.sentinel

      Description:
        This control checks whether 'aws_guardduty_detector' is enabled in your
        GuardDuty account and Region.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy guardduty-should-be-enabled.

      ✓ Found 0 resource violations

      guardduty-should-be-enabled.sentinel:50:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - guardduty-should-be-enabled.sentinel

      Description:
        This control checks whether 'aws_guardduty_detector' is enabled in your
        GuardDuty account and Region.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy guardduty-should-be-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_guardduty_detector.MyDetector
          | ✗ failed
          | 'aws_guardduty_detector' is enabled in your GuardDuty account and Region. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/guardduty-controls.html#guardduty-1 for more details.


      guardduty-should-be-enabled.sentinel:50:1 - Rule "main"
        Value:
          false
```

---