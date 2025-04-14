# Amazon EC2 launch templates should not assign public IPs to network interfaces

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks if Amazon EC2 launch templates are configured to assign public IP addresses to network interfaces upon launch. The control fails if an EC2 launch template is configured to assign a public IP address to network interfaces or if there is at least one network interface that has a public IP address.

A public IP address is one that is reachable from the internet. If you configure your network interfaces with a public IP address, then the resources associated with those network interfaces may be reachable from the internet. EC2 resources shouldn't be publicly accessible because this may permit unintended access to your workloads.

This rule is covered by the [ec2-launch-template-public-ip-disabled](../../policies/ec2/ec2-launch-template-public-ip-disabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - ec2-launch-template-public-ip-disabled.sentinel

    Description:
    This policy checks if resources of type 'aws_launch_template' have the
    attribute
    'associate_public_ip_address' in 'network_interfaces' set to 'false'

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy ec2-launch-template-public-ip-disabled.

    ✓ Found 0 resource violations

    ec2-launch-template-public-ip-disabled.sentinel:56:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
    Fail - ec2-launch-template-public-ip-disabled.sentinel

    Description:
    This policy checks if resources of type 'aws_launch_template' have the
    attribute
    'associate_public_ip_address' in 'network_interfaces' set to 'false'

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ec2-launch-template-public-ip-disabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_launch_template.foo
        | ✗ failed
        | Attribute 'associate_public_ip_address' must be set to 'false' in 'network_interfaces' for 'aws_launch_template' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ec2-controls.html#ec2-25 for more details.


    ec2-launch-template-public-ip-disabled.sentinel:56:1 - Rule "main"
    Value:
        false
```

---
