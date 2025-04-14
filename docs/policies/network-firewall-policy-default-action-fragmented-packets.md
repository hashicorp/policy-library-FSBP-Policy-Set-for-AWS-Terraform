# The default stateless action for Network Firewall policies should be drop or forward for fragmented packets

| Provider            | Category                                         |
|---------------------|--------------------------------------------------|
| Amazon Web Services | Secure Network Configuration                     |

## Description

This control checks whether the default stateless action for fragmented packets for a Network Firewall policy is drop or forward. The control passes if Drop or Forward is selected, and fails if Pass is selected.

A firewall policy defines how your firewall monitors and handles traffic in Amazon VPC. You configure stateless and stateful rule groups to filter packets and traffic flows. Defaulting to Pass can allow unintended traffic.

This rule is covered by the [network-firewall-policy-default-action-fragmented-packets](../../policies/network-firewall/network-firewall-policy-default-action-fragmented-packets.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - network-firewall-policy-default-action-fragmented-packets.sentinel

      Description:
        This policy ensures that resources of type
        'aws_networkfirewall_firewall_policy' have
        default stateless action should be 'aws:drop' or 'aws:forward_to_sfe' for
        fragmented packets

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy network-firewall-policy-default-action-full-packets.

      ✓ Found 0 resource violations

      network-firewall-policy-default-action-fragmented-packets.sentinel:57:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - network-firewall-policy-default-action-fragmented-packets.sentinel

      Description:
        This policy ensures that resources of type
        'aws_networkfirewall_firewall_policy' have
        default stateless action should be 'aws:drop' or 'aws:forward_to_sfe' for
        fragmented packets

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy network-firewall-policy-default-action-full-packets.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_networkfirewall_firewall_policy.example
          | ✗ failed
          | 'aws_networkfirewall_firewall' default stateless action should be 'aws:drop' or 'aws:forward_to_sfe' for fragmented packets. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/networkfirewall-controls.html#networkfirewall-4 for more details.


      network-firewall-policy-default-action-fragmented-packets.sentinel:57:1 - Rule "main"
        Value:
          false
```

---