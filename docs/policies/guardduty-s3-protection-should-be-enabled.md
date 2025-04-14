# GuardDuty S3 Protection should be enabled

| Provider            | Category           |
|---------------------|--------------------|
| Amazon Web Services | Detection services |

## Description

This control checks whether GuardDuty S3 Protection is enabled. For a standalone account, the control fails if GuardDuty S3 Protection is disabled in the account. In a multi-account environment, the control fails if the delegated GuardDuty administrator account and all member accounts don't have S3 Protection enabled.

In a multi-account environment, the control generates findings in only the delegated GuardDuty administrator account. Only the delegated administrator can enable or disable the S3 Protection feature for the member accounts in the organization. GuardDuty member accounts can't modify this configuration from their accounts. This control generates FAILED findings if the delegated GuardDuty administrator has a suspended member account that doesn't have GuardDuty S3 Protection enabled. To receive a PASSED finding, the delegated administrator must disassociate these suspended accounts in GuardDuty.

S3 Protection enables GuardDuty to monitor object-level API operations to identify potential security risks for data within your Amazon Simple Storage Service (Amazon S3) buckets. GuardDuty monitors threats against your S3 resources by analyzing AWS CloudTrail management events and CloudTrail S3 data events.

This rule is covered by the [guardduty-s3-protection-should-be-enabled](../../policies/guardduty/guardduty-s3-protection-should-be-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - guardduty-s3-protection-should-be-enabled.sentinel

      Description:
        This control checks whether 'aws_guardduty_detector' S3 Protection is enabled.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy guardduty-s3-protection-should-be-enabled.

      ✓ Found 0 resource violations

      guardduty-s3-protection-should-be-enabled.sentinel:56:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - guardduty-s3-protection-should-be-enabled.sentinel

      Description:
        This control checks whether 'aws_guardduty_detector' S3 Protection is enabled.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy guardduty-s3-protection-should-be-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_guardduty_detector.MyDetector
          | ✗ failed
          | 'aws_guardduty_detector' S3 Protection should be enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/guardduty-controls.html#guardduty-10 for more details.


      guardduty-s3-protection-should-be-enabled.sentinel:56:1 - Rule "main"
        Value:
          false
```

---