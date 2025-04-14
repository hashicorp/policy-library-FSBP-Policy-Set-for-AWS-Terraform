# Amazon EC2 Auto Scaling group should cover multiple Availability Zones

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether an Amazon EC2 Auto Scaling group spans at least the specified number of Availability Zones (AZs). The control fails if an Auto Scaling group doesn't span at least the specified number of AZs. Unless you provide a custom parameter value for the minimum number of AZs, Security Hub uses a default value of two AZs.

An Auto Scaling group that doesn't span multiple AZs can't launch instances in another AZ to compensate if the configured single AZ becomes unavailable. However, an Auto Scaling group with a single Availability Zone may be preferred in some use cases, such as batch jobs or when inter-AZ transfer costs need to be kept to a minimum. In such cases, you can disable this control or suppress its findings.

This rule is covered by the [autoscaling-group-should-cover-multiple-azs](../../policies/autoscaling-group/autoscaling-group-should-cover-multiple-azs.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - autoscaling-group-should-cover-multiple-azs.sentinel

    Description:
    This policy checks if resources of type 'aws_autoscaling_group' have more than
    one value
    in either 'availability_zone' or 'vpc_zone_identifier'

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy autoscaling-group-should-cover-multiple-azs.

    ✓ Found 0 resource violations

    autoscaling-group-should-cover-multiple-azs.sentinel:48:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
    Fail - autoscaling-group-should-cover-multiple-azs.sentinel

    Description:
    This policy checks if resources of type 'aws_autoscaling_group' have more than
    one value
    in either 'availability_zone' or 'vpc_zone_identifier'

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy autoscaling-group-should-cover-multiple-azs.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_autoscaling_group.bar
        | ✗ failed
        | Attribute 'availability_zone' or 'vpc_zone_identifier' should have atleast two values for AWS Autoscaling Group. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/autoscaling-controls.html#autoscaling-2 for more details.


    autoscaling-group-should-cover-multiple-azs.sentinel:48:1 - Rule "main"
    Value:
        false
```

---
