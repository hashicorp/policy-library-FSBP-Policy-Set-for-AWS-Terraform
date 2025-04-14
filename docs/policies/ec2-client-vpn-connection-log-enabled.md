# AWS EC2 Client VPN endpoints should have client connection logging enabled

| Provider            | Category   |
|---------------------|------------|
| Amazon Web Services | Monitoring |

## Description

This control checks whether an AWS Client VPN endpoint has client connection logging enabled. The control fails if the endpoint doesn't have client connection logging enabled.

Client VPN endpoints allow remote clients to securely connect to resources in a Virtual Private Cloud (VPC) in AWS. Connection logs allow you to track user activity on the VPN endpoint and provides visibility. When you enable connection logging, you can specify the name of a log stream in the log group. If you don't specify a log stream, the Client VPN service creates one for you.

This rule is covered by the [ec2-client-vpn-connection-log-enabled](../../policies/ec2/ec2-client-vpn-connection-log-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - ec2-client-vpn-connection-log-enabled.sentinel

    Description:
    This policy checks if resources of type 'aws_ec2_client_vpn_endpoint' have the
    cloudwatch logs
    enabled in the 'connection_log_options' attribute

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy ec2-client-vpn-connection-log-enabled.

    ✓ Found 0 resource violations

    ec2-client-vpn-connection-log-enabled.sentinel:48:1 - Rule "main"
    Value:
        true

```

---

## Policy Results (Fail)
```bash
trace:
    Fail - ec2-client-vpn-connection-log-enabled.sentinel

    Description:
    This policy checks if resources of type 'aws_ec2_client_vpn_endpoint' have the
    cloudwatch logs
    enabled in the 'connection_log_options' attribute

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ec2-client-vpn-connection-log-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_ec2_client_vpn_endpoint.example-2
        | ✗ failed
        | AWS EC2 Client VPN endpoints should have client connection logging enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ec2-controls.html#ec2-51 for more details.


    ec2-client-vpn-connection-log-enabled.sentinel:48:1 - Rule "main"
    Value:
        false

```
---