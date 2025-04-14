# Classic Load Balancers should have cross-zone load balancing enabled

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Networking   |

## Description

This policy checks if cross-zone load balancing is enabled for the Classic Load Balancers (CLBs). The policy fails if cross-zone load balancing is not enabled for a CLB.

A load balancer node distributes traffic only across the registered targets in its Availability Zone. When cross-zone load balancing is disabled, each load balancer node distributes traffic only across the registered targets in its Availability Zone. If the number of registered targets is not same across the Availability Zones, traffic wont be distributed evenly and the instances in one zone may end up over utilized compared to the instances in another zone. With cross-zone load balancing enabled, each load balancer node for your Classic Load Balancer distributes requests evenly across the registered instances in all enabled Availability Zones.

This rule is covered by the [elb-cross-zone-load-balancing-enabled](../../policies/elb/elb-cross-zone-load-balancing-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - elb-cross-zone-load-balancing-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_elb' have the attribute
        'cross_zone_load_balancing' set to true

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy elb-cross-zone-load-balancing-enabled.

      ✓ Found 0 resource violations

      elb-cross-zone-load-balancing-enabled.sentinel:42:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - elb-cross-zone-load-balancing-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_elb' have the attribute
        'cross_zone_load_balancing' set to true

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elb-cross-zone-load-balancing-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_elb.this
          | ✗ failed
          | Classic load balancers should have cross zone load balancing enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elb-controls.html#elb-9 for more details.


      elb-cross-zone-load-balancing-enabled.sentinel:42:1 - Rule "main"
        Value:
          false
```

---