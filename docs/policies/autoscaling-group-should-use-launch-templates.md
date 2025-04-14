# Amazon EC2 Auto Scaling groups should use Amazon EC2 launch templates

| Provider            |        Category        |
| ------------------- | ---------------------- |
| Amazon Web Services | Resource Configuration |

## Description

This control checks whether an Amazon EC2 Auto Scaling group is created from an EC2 launch template. This control fails if an Amazon EC2 Auto Scaling group is not created with a launch template or if a launch template is not specified in a mixed instances policy.

An EC2 Auto Scaling group can be created from either an EC2 launch template or a launch configuration. However, using a launch template to create an Auto Scaling group ensures that you have access to the latest features and improvements.

This rule is covered by the [autoscaling-group-should-use-launch-templates](../../policies/autoscaling-group/autoscaling-group-should-use-launch-templates.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - autoscaling-group-should-use-launch-templates.sentinel

    Description:
    This policy checks if resources of type 'aws_autoscaling_group' have the
    'launch_template'
    atribute or the attribute must be present in 'mixed_instances_policy'

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy autoscaling-group-should-use-launch-templates.

    ✓ Found 0 resource violations

    autoscaling-group-should-use-launch-templates.sentinel:50:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
    Fail - autoscaling-group-should-use-launch-templates.sentinel

    Description:
    This policy checks if resources of type 'aws_autoscaling_group' have the
    'launch_template'
    atribute or the attribute must be present in 'mixed_instances_policy'

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy autoscaling-group-should-use-launch-templates.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_autoscaling_group.bar
        | ✗ failed
        | AWS Autoscaling Group must use AWS EC2 Launch Templates. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/autoscaling-controls.html#autoscaling-9 for more details.


    autoscaling-group-should-use-launch-templates.sentinel:50:1 - Rule "main"
    Value:
        false
```

---
