# Classic Load Balancers with SSL listeners should use a predefined security policy that has strong AWS Configuration

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Networking   |

## Description

This policy checks whether your Classic Load Balancer HTTPS/SSL listeners use the predefined policy ELBSecurityPolicy-TLS-1-2-2017-01. The policy fails if the Classic Load Balancer HTTPS/SSL listeners do not use ELBSecurityPolicy-TLS-1-2-2017-01.

A security policy is a combination of SSL protocols, ciphers, and the Server Order Preference option. Predefined policies policy the ciphers, protocols, and preference orders to support during SSL negotiations between a client and load balancer.

This rule is covered by the [elb-ensure-ssl-listener-predefined-security-policy](../../policies/elb-ensure-ssl-listener-predefined-security-policy.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - elb-ensure-ssl-listener-predefined-security-policy.sentinel

      Description:
        This policy checks if classic load balancers with SSL listeners
        have predefined security policy configured

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy elb-ensure-ssl-listener-predefined-security-policy.

      ✓ Found 0 resource violations

      elb-ensure-ssl-listener-predefined-security-policy.sentinel:131:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - elb-ensure-ssl-listener-predefined-security-policy.sentinel

      Description:
        This policy checks if classic load balancers with SSL listeners
        have predefined security policy configured

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elb-ensure-ssl-listener-predefined-security-policy.

      Found 1 resource violations

      → Module name: module.elb
        ↳ Resource Address: module.elb.aws_elb.this
          | ✗ failed
          | Classic Load Balancers with SSL listeners should use a predefined security policy that has strong AWS Configuration. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elb-controls.html#elb-8 for more details.


      elb-ensure-ssl-listener-predefined-security-policy.sentinel:131:1 - Rule "main"
        Value:
          false
```

---