# Application and Classic Load Balancers logging should be enabled

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Networking   |

## Description

This policy checks whether the Application Load Balancer and the Classic Load Balancerhave logging enabled. The policy fails if 'access_logs.enabled' is false.

Elastic Load Balancing provides access logs that capture detailed information about requests sent to your load balancer. Each log contains information such as the time the request was received, the client's IP address, latencies, request paths, and server responses. You can use these access logs to analyze traffic patterns and to troubleshoot issues.

This rule is covered by the [elb-ensure-access-logging-enabled](../../policies/elb-ensure-access-logging-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - elb-ensure-access-logging-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_lb' and 'aws_elb'
        have 'access_logging' enabled.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy elb-ensure-access-logging-enabled.

      ✓ Found 0 resource violations

      elb-ensure-access-logging-enabled.sentinel:62:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - elb-ensure-access-logging-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_lb' and 'aws_elb'
        have 'access_logging' enabled.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elb-ensure-access-logging-enabled.

      Found 2 resource violations

      → Module name: root
        ↳ Resource Address: aws_elb.this
          | ✗ failed
          | Application and Classic Load Balancers logging should be enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elb-controls.html#elb-5 for more details.
        ↳ Resource Address: aws_lb.this
          | ✗ failed
          | Application and Classic Load Balancers logging should be enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elb-controls.html#elb-5 for more details.


      elb-ensure-access-logging-enabled.sentinel:62:1 - Rule "main"
        Value:
          false
```

---