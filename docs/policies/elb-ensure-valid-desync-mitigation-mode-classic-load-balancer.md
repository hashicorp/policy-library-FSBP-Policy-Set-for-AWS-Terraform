# Classic Load Balancer should be configured with defensive or strictest desync mitigation mode

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Networking   |

## Description

This policy checks whether a Classic Load Balancer is configured with defensive or strictest desync mitigation mode. The policy fails if the Classic Load Balancer isn't configured with defensive or strictest desync mitigation mode.

HTTP Desync issues can lead to request smuggling and make applications vulnerable to request queue or cache poisoning. In turn, these vulnerabilities can lead to credential hijacking or execution of unauthorized commands. Classic Load Balancers configured with defensive or strictest desync mitigation mode protect your application from security issues that may be caused by HTTP Desync.

This rule is covered by the [elb-ensure-valid-desync-mitigation-mode](../../policies/elb-ensure-valid-desync-mitigation-mode.sentinel) policy with the `classic` as the `lb_type` parameter.

## Policy Results (Pass)
```bash
trace:
      Pass - elb-ensure-valid-desync-mitigation-mode-classic-load-balancer.sentinel

      Description:
        This policy checks if resources of type 'aws_elb' has the
        'desync_mitigation_mode' attribute set to either 'defensive' or
        'strictest'

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy elb-ensure-valid-desync-mitigation-mode.

      ✓ Found 0 resource violations

      elb-ensure-valid-desync-mitigation-mode-classic-load-balancer.sentinel:45:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - elb-ensure-valid-desync-mitigation-mode-classic-load-balancer.sentinel

      Description:
        This policy checks if resources of type 'aws_elb' has the
        'desync_mitigation_mode' attribute set to either 'defensive' or
        'strictest'

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elb-ensure-valid-desync-mitigation-mode.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_elb.this
          | ✗ failed
          | Classic load balancers should be configured with defensive or strictest desync mitigation mode. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elb-controls.html#elb-14 for more details.


      elb-ensure-valid-desync-mitigation-mode-classic-load-balancer.sentinel:45:1 - Rule "main"
        Value:
          false
```

---