# Classic Load Balancers should have connection draining enabled

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Networking   |

## Description

This policy checks whether Classic Load Balancers have connection draining enabled.

Enabling connection draining on Classic Load Balancers ensures that the load balancer stops sending requests to instances that are de-registering or unhealthy. It keeps the existing connections open. This is particularly useful for instances in Auto Scaling groups, to ensure that connections aren't severed abruptly.

This rule is covered by the [elb-connection-draining-enabled](../../policies/elb/elb-connection-draining-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - elb-connection-draining-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_elb' have the attribute
        'connection_draining' set to true

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy elb-connection-draining-enabled.

      ✓ Found 0 resource violations

      elb-connection-draining-enabled.sentinel:42:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - elb-connection-draining-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_elb' have the attribute
        'connection_draining' set to true

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elb-connection-draining-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_elb.this
          | ✗ failed
          | Classic load balancers should have connection draining enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elb-controls.html#elb-7 for more details.


      elb-connection-draining-enabled.sentinel:42:1 - Rule "main"
        Value:
          false
```

---