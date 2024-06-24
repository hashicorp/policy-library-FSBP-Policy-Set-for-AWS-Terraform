# Classic Load Balancer should span multiple Availability Zones

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Networking   |

## Description

This policy checks whether a Classic Load Balancer has been configured to span at least the specified number of Availability Zones (AZs). The policy fails if the Classic Load Balancer does not span at least the specified number of AZs. Unless you provide a custom parameter value for the minimum number of AZs, Security Hub uses a default value of two AZs.

A Classic Load Balancer can be set up to distribute incoming requests across Amazon EC2 instances in a single Availability Zone or multiple Availability Zones. A Classic Load Balancer that does not span multiple Availability Zones is unable to redirect traffic to targets in another Availability Zone if the sole configured Availability Zone becomes unavailable.

This rule is covered by the [elb-ensure-multi-az-configuration-classic-load-balancer](../../policies/elb-ensure-multi-az-configuration-classic-load-balancer.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - elb-ensure-multi-az-configuration-classic-load-balancer.sentinel

      Description:
        This policy checks if load balancers span across
        multiple availability zones.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy elb-ensure-multi-az-configuration.

      ✓ Found 0 resource violations

      elb-ensure-multi-az-configuration-classic-load-balancer.sentinel:54:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - elb-ensure-multi-az-configuration-classic-load-balancer.sentinel

      Description:
        This policy checks if load balancers span across
        multiple availability zones.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elb-ensure-multi-az-configuration.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_elb.this
          | ✗ failed
          | Classic load balancers must have atleast 2 availability zones configured


      elb-ensure-multi-az-configuration-classic-load-balancer.sentinel:54:1 - Rule "main"
        Value:
          false
```

---