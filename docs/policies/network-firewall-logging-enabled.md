# Network Firewall logging should be enabled

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Logging   |

## Description

DISCLAIMER - This policy works when all resources are present in the same module

This control checks whether logging is enabled for an AWS Network Firewall firewall. The control fails if logging isn't enabled for at least one log type or if the logging destination doesn't exist.


This rule is covered by the [network-firewall-logging-enabled](../../policies/network-firewall-logging-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - network-firewall-logging-enabled.sentinel

    Description:
      This policy ensures that resources of type 'aws_networkfirewall_firewall' have
      logging enabled

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy network-firewall-logging-enabled.

    ✓ Found 0 resource violations

    network-firewall-logging-enabled.sentinel:82:1 - Rule "main"
      Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - network-firewall-logging-enabled.sentinel

    Description:
      This policy ensures that resources of type 'aws_networkfirewall_firewall' have
      logging enabled

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy network-firewall-logging-enabled.

      Found 1 resource violations

      → Module name: module.nf
        ↳ Resource Address: module.nf.aws_networkfirewall_firewall.example
          | ✗ failed
          | 'aws_networkfirewall_firewall' resources should have logging enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/networkfirewall-controls.html#networkfirewall-2 for more details.


      network-firewall-logging-enabled.sentinel:82:1 - Rule "main"
        Value:
          false
```

---