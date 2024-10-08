# Network Firewall firewalls should have deletion protection enabled

| Provider            | Category                                         |
|---------------------|--------------------------------------------------|
| Amazon Web Services | Secure Network Configuration                     |

## Description

This control checks whether an AWS Network Firewall firewall has deletion protection enabled. The control fails if deletion protection isn't enabled for a firewall.

AWS Network Firewall is a stateful, managed network firewall and intrusion detection service that enables you to inspect and filter traffic to, from, or between your Virtual Private Clouds (VPCs). The deletion protection setting protects against accidental deletion of the firewall.

This rule is covered by the [network-firewall-should-have-deletion-protection-enabled](../../policies/network-firewall-should-have-deletion-protection-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - network-firewall-should-have-deletion-protection-enabled.sentinel

      Description:
        This policy checks whether a resource 'aws_networkfirewall_firewall' has
        deletion protection enabled.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy network-firewall-should-have-deletion-protection-enabled.

      ✓ Found 0 resource violations

      network-firewall-should-have-deletion-protection-enabled.sentinel:46:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - network-firewall-should-have-deletion-protection-enabled.sentinel

      Description:
        This policy checks whether a resource 'aws_networkfirewall_firewall' has
        deletion protection enabled.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy network-firewall-should-have-deletion-protection-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_networkfirewall_firewall.example
          | ✗ failed
          | deletion protection enabled in 'aws_networkfirewall_firewall'. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/networkfirewall-controls.html#networkfirewall-9 for more details.


      network-firewall-should-have-deletion-protection-enabled.sentinel:46:1 - Rule "main"
        Value:
          false
```

---