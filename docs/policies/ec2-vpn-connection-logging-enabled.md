# AWS Site-to-Site VPN Connection should have AWS CLoudwatch Logs enabled

| Provider            | Category   |
|---------------------|------------|
| Amazon Web Services | Monitoring |

## Description

This control checks whether an AWS Site-to-Site VPN connection has Amazon CloudWatch Logs enabled for both tunnels. The control fails if a Site-to-Site VPN connection doesn't have CloudWatch Logs enabled for both tunnels.

AWS Site-to-Site VPN logs provide you with deeper visibility into your Site-to-Site VPN deployments. With this feature, you have access to Site-to-Site VPN connection logs that provide details on IP Security (IPsec) tunnel establishment, Internet Key Exchange (IKE) negotiations, and dead peer detection (DPD) protocol messages. Site-to-Site VPN logs can be published to CloudWatch Logs. This feature provides customers with a single consistent way to access and analyze detailed logs for all of their Site-to-Site VPN connections.

This rule is covered by the [ec2-vpn-connection-logging-enabled](../../policies/ec2/ec2-vpn-connection-logging-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:

    Pass - ec2-vpn-connection-logging-enabled.sentinel

    Description:
      This policy checks if resources of type 'aws_vpn_connection' have the
      cloudwatch logs
      enabled for both 'tunnel1' and 'tunnel2'

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy ec2-vpn-connection-logging-enabled.

    ✓ Found 0 resource violations

    ec2-vpn-connection-logging-enabled.sentinel:61:1 - Rule "main"
      Value:
        true

```

---

## Policy Results (Fail)
```bash
trace:
    Fail - ec2-vpn-connection-logging-enabled.sentinel

    Description:
      This policy checks if resources of type 'aws_vpn_connection' have the
      cloudwatch logs
      enabled for both 'tunnel1' and 'tunnel2'

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ec2-vpn-connection-logging-enabled.

    Found 1 resource violations

    → Module name: root
      ↳ Resource Address: aws_vpn_connection.example
        | ✗ failed
        | AWS Site-to-Site VPN Connection should have the AWS Cloudwatch logs enabled for both ends. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ec2-controls.html#ec2-171 for more details.


    ec2-vpn-connection-logging-enabled.sentinel:61:1 - Rule "main"
      Value:
        false

```
---