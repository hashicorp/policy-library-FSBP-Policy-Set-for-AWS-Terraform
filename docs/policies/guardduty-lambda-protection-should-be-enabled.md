# GuardDuty Lambda Protection should be enabled

| Provider            | Category           |
|---------------------|--------------------|
| Amazon Web Services | Detection services |

## Description

This control checks whether GuardDuty Lambda Protection is enabled. For a standalone account, the control fails if GuardDuty Lambda Protection is disabled in the account. In a multi-account environment, the control fails if the delegated GuardDuty administrator account and all member accounts don't have Lambda Protection enabled.

In a multi-account environment, the control generates findings in only the delegated GuardDuty administrator account. Only the delegated administrator can enable or disable the Lambda Protection feature for the member accounts in the organization. GuardDuty member accounts can't modify this configuration from their accounts. This control generates FAILED findings if the delegated GuardDuty administrator has a suspended member account that doesn't have GuardDuty Lambda Protection enabled. To receive a PASSED finding, the delegated administrator must disassociate these suspended accounts in GuardDuty.

GuardDuty Lambda Protection helps you identify potential security threats when an AWS Lambda function gets invoked. After your enable Lambda Protection, GuardDuty starts monitoring Lambda network activity logs associated with the Lambda functions in your AWS account. When a Lambda function gets invoked and GuardDuty identifies suspicious network traffic that indicates the presence of a potentially malicious piece of code in your Lambda function, GuardDuty generates a finding.

This rule is covered by the [guardduty-lambda-protection-should-be-enabled](../../policies/guardduty-lambda-protection-should-be-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - guardduty-lambda-protection-should-be-enabled.sentinel

      Description:
        This control checks whether 'aws_guardduty_detector' Lambda Protection is
        enabled. For a standalone account.
        the control fails if 'aws_guardduty_detector' Lambda Protection is disabled in
        the account.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy guardduty-lambda-protection-should-be-enabled.

      ✓ Found 0 resource violations

      guardduty-lambda-protection-should-be-enabled.sentinel:57:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - guardduty-lambda-protection-should-be-enabled.sentinel

      Description:
        This control checks whether 'aws_guardduty_detector' Lambda Protection is
        enabled. For a standalone account.
        the control fails if 'aws_guardduty_detector' Lambda Protection is disabled in
        the account.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy guardduty-lambda-protection-should-be-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_guardduty_detector.MyDetector
          | ✗ failed
          | 'aws_guardduty_detector' Lambda Protection should be enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/guardduty-controls.html#guardduty-6 for more details.


      guardduty-lambda-protection-should-be-enabled.sentinel:57:1 - Rule "main"
        Value:
          false
```

---