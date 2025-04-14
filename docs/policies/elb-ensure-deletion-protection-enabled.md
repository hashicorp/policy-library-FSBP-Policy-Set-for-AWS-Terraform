# Application, Gateway, and Network Load Balancers should have deletion protection enabled

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Networking   |

## Description

This policy checks whether an Application, Gateway, or Network Load Balancer has deletion protection enabled. The policy fails if deletion protection is disabled.

Enable deletion protection to protect your Application, Gateway, or Network Load Balancer from deletion.

This rule is covered by the [elb-ensure-deletion-protection-enabled](../../policies/elb/elb-ensure-deletion-protection-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - elb-ensure-deletion-protection-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_lb' has the
        'enable_deletion_protection' attribute set to true.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy elb-ensure-deletion-protection-enabled.

      ✓ Found 0 resource violations

      elb-ensure-deletion-protection-enabled.sentinel:42:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - elb-ensure-deletion-protection-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_lb' has the
        'enable_deletion_protection' attribute set to true.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elb-ensure-deletion-protection-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_lb.this
          | ✗ failed
          | Application, Gateway, and Network Load Balancers should have deletion protection enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elb-controls.html#elb-6 for more details.


      elb-ensure-deletion-protection-enabled.sentinel:42:1 - Rule "main"
        Value:
          false
```

---