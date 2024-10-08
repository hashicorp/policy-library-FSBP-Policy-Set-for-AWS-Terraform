# Stateless Network Firewall rule group should not be empty in AWS Network Firewall

| Provider            | Category                                         |
|---------------------|--------------------------------------------------|
| Amazon Web Services | Secure Network Configuration                     |

## Description

This control checks if a stateless rule group in AWS Network Firewall contains rules. The control fails if there are no rules in the rule group.

A rule group contains rules that define how your firewall processes traffic in your VPC. An empty stateless rule group, when present in a firewall policy, might give the impression that the rule group will process traffic. However, when the stateless rule group is empty, it does not process traffic.

This rule is covered by the [network-firewall-stateless-rule-group](../../policies/network-firewall-stateless-rule-group.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - network-firewall-stateless-rule-group.sentinel

      Description:
        This policy checks if a stateless rule group in
        'aws_networkfirewall_rule_group' contains rules

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy network-firewall-stateless-rule-group.

      ✓ Found 0 resource violations

      network-firewall-stateless-rule-group.sentinel:52:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - network-firewall-stateless-rule-group.sentinel

      Description:
        This policy checks if a stateless rule group in
        'aws_networkfirewall_rule_group' contains rules

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy network-firewall-stateless-rule-group.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_networkfirewall_rule_group.example
          | ✗ failed
          | stateless rule group in 'aws_networkfirewall_rule_group' contains rules. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/networkfirewall-controls.html#networkfirewall-6 for more details.


      network-firewall-stateless-rule-group.sentinel:52:1 - Rule "main"
        Value:
          false
```

---