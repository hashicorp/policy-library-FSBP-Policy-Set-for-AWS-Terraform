# AWS Security Group should not allow ingress traffic from 0.0.0.0/0 or ::/0 to common ports

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Security     |

## Description

DISCLAIMER - This policy works when all resources of type aws_security_group, aws_security_group_rule and aws_vpc_security_group_ingress_rule 
have their `cidr_blocks`,`ipv6_cidr_blocks`,`cidr_ipv4` or `cidr_ipv6`  attributes set as a constant value.

This control checks whether unrestricted incoming traffic for an Amazon EC2 security group is accessible to the specified ports that are considered to be high risk. This control fails if any of the rules in a security group allow ingress traffic from '0.0.0.0/0' or '::/0' to those ports.

Security groups provide stateful filtering of ingress and egress network traffic to AWS resources. Unrestricted access (0.0.0.0/0) increases opportunities for malicious activity, such as hacking, denial-of-service attacks, and loss of data.

This rule is covered by the [ec2-security-group-ingress-traffic-restriction-to-common-ports](../../policies/ec2/ec2-security-group-ingress-traffic-restriction-to-common-ports.sentinel) policy when the `port` parameter is passed as `22`.

## Policy Results (Pass)
```bash
trace:
    Pass - ec2-security-group-ingress-traffic-restriction-to-common-ports.sentinel

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy ec2-security-group-ingress-traffic-restriction-to-common-ports.

    ✓ Found 0 resource violations

    ec2-security-group-ingress-traffic-restriction-to-common-ports.sentinel:127:1 - Rule "main"
    Value:
        true

    ec2-security-group-ingress-traffic-restriction-to-common-ports.sentinel:117:1 - Rule "is_aws_security_group_compliant"
    Description:
        Checks if 'aws_security_group' resources block ingress traffic
        from unknown sources to the configured ports

    Value:
        true

    ec2-security-group-ingress-traffic-restriction-to-common-ports.sentinel:111:1 - Rule "is_aws_security_group_rule_compliant"
    Description:
        Checks if 'aws_security_group_rule' resources block ingress
        traffic
        from unknown sources to the configured ports

    Value:
        true

    ec2-security-group-ingress-traffic-restriction-to-common-ports.sentinel:123:1 - Rule "is_aws_vpc_security_group_ingress_rule_compliant"
    Description:
        Checks if 'aws_vpc_security_group_ingress_rule' resources block
        ingress traffic
        from unknown sources to the configured ports

    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - ec2-security-group-ingress-traffic-restriction-to-common-ports.sentinel

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ec2-security-group-ingress-traffic-restriction-to-common-ports.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_security_group_rule.this
        | ✗ failed
        | Security group rules should not allow ingress from 0.0.0.0/0 or ::/0 to common ports. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ec2-controls.html#ec2-19 for more details.


    ec2-security-group-ingress-traffic-restriction-to-common-ports.sentinel:127:1 - Rule "main"
    Value:
        false

    ec2-security-group-ingress-traffic-restriction-to-common-ports.sentinel:111:1 - Rule "is_aws_security_group_rule_compliant"
    Description:
        Checks if 'aws_security_group_rule' resources block ingress
        traffic
        from unknown sources to the configured ports

    Value:
        false
```

---