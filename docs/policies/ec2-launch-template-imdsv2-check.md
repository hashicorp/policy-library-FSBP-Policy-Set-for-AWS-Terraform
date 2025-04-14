# EC2 launch templates should use Instance Metadata Service Version 2 (IMDSv2)

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether an Amazon EC2 launch template is configured with Instance Metadata Service Version 2 (IMDSv2). The control fails if HttpTokens is set to optional.

Running resources on supported software versions ensures optimal performance, security, and access to the latest features. Regular updates safeguard against vulnerabilities, which help ensure a stable and efficient user experience.

This rule is covered by the [ec2-launch-template-imdsv2-check](../../policies/ec2/ec2-launch-template-imdsv2-check.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - ec2-launch-template-imdsv2-check.sentinel

    Description:
    This policy checks if resources of type 'aws_launch_template' have the
    attribute
    'http_tokens' in 'metadata_options' set to 'required'

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy ec2-launch-template-imdsv2-check.

    ✓ Found 0 resource violations

    ec2-launch-template-imdsv2-check.sentinel:55:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
    Fail - ec2-launch-template-imdsv2-check.sentinel

    Description:
    This policy checks if resources of type 'aws_launch_template' have the
    attribute
    'http_tokens' in 'metadata_options' set to 'required'

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ec2-launch-template-imdsv2-check.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_launch_template.foo
        | ✗ failed
        | Attribute 'http_options' must be set to 'required' in 'metadata_options' for 'aws_launch_template' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ec2-controls.html#ec2-170 for more details.


    ec2-launch-template-imdsv2-check.sentinel:55:1 - Rule "main"
    Value:
        false
```

---
