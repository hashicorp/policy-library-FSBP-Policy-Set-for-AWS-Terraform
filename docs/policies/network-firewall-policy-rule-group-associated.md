#  Network Firewall policies should have at least one rule group associated

| Provider            | Category                                         |
|---------------------|--------------------------------------------------|
| Amazon Web Services | Secure Network Configuration                     |

## Description

This control checks whether a Network Firewall policy has any stateful or stateless rule groups associated. The control fails if stateless or stateful rule groups are not assigned.

This rule is covered by the [network-firewall-policy-rule-group-associated](../../policies/network-firewall/network-firewall-policy-rule-group-associated.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - network-firewall-policy-rule-group-associated.sentinel

    Description:
    This policy requires atleast 1 rule group to be enabled for
    'aws_networkfirewall_firewall_policy' resources

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy network-firewall-policy-rule-group-associated.

    ✓ Found 0 resource violations

    network-firewall-policy-rule-group-associated.sentinel:49:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - network-firewall-policy-rule-group-associated.sentinel

    Description:
    This policy requires atleast 1 rule group to be enabled for
    'aws_networkfirewall_firewall_policy' resources

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy network-firewall-policy-rule-group-associated.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_networkfirewall_firewall_policy.example
        | ✗ failed
        | Atleast 1 rule group is required for 'aws_networkfirewall_firewall_policy' resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/networkfirewall-controls.html#networkfirewall-3 for more details.


    network-firewall-policy-rule-group-associated.sentinel:49:1 - Rule "main"
    Value:
        false
```

---