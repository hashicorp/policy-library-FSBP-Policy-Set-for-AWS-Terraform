# GuardDuty EKS Runtime Monitoring should be enabled

| Provider            | Category           |
|---------------------|--------------------|
| Amazon Web Services | Detection Services |

## Description

This control checks whether GuardDuty EKS Runtime Monitoring with automated agent management is enabled. For a standalone account, the control fails if GuardDuty EKS Runtime Monitoring with automated agent management is disabled in the account. In a multi-account environment, the control fails if the delegated GuardDuty administrator account and all member accounts don't have EKS Runtime Monitoring with automated agent management enabled.

In a multi-account environment, the control generates findings in only the delegated GuardDuty administrator account. Only the delegated administrator can enable or disable the EKS Runtime Monitoring feature with automated agent management for the member accounts in the organization. GuardDuty member accounts can't modify this configuration from their accounts. This control generates FAILED findings if the delegated GuardDuty administrator has a suspended member account that doesn't have GuardDuty EKS Runtime Monitoring enabled. To receive a PASSED finding, the delegated administrator must disassociate these suspended accounts in GuardDuty.

EKS Protection in Amazon GuardDuty provides threat detection coverage to help you protect Amazon EKS clusters within your AWS environment. EKS Runtime Monitoring uses operating system-level events to help you detect potential threats in EKS nodes and containers within your EKS clusters.

This rule is covered by the [guardduty-eks-protection-runtime-should-be-enabled](../../policies/guardduty/guardduty-eks-protection-runtime-should-be-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - guardduty-eks-protection-runtime-should-be-enabled.sentinel

      Description:
        This control checks whether 'aws_guardduty_detector_feature' EKS Runtime
        Monitoring with automated agent management is enabled.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy guardduty-eks-protection-runtime-should-be-enabled.

      ✓ Found 0 resource violations

      guardduty-eks-protection-runtime-should-be-enabled.sentinel:46:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - guardduty-eks-protection-runtime-should-be-enabled.sentinel

      Description:
        This control checks whether 'aws_guardduty_detector_feature' EKS Runtime
        Monitoring with automated agent management is enabled.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy guardduty-eks-protection-runtime-should-be-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_guardduty_detector_feature.eks_runtime_monitoring
          | ✗ failed
          | 'aws_guardduty_detector_feature' EKS Runtime Monitoring with automated agent management should be enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/guardduty-controls.html#guardduty-7 for more details.


      guardduty-eks-protection-runtime-should-be-enabled.sentinel:46:1 - Rule "main"
        Value:
          false
```

---