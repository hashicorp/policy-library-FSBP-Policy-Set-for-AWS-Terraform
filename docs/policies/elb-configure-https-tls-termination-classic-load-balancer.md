# Classic Load Balancer listeners should be configured with HTTPS or TLS termination

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Networking   |

## Description

This policy checks whether your Classic Load Balancer listeners are configured with HTTPS or TLS protocol for front-end (client to load balancer) connections. The policy is applicable if a Classic Load Balancer has listeners. If your Classic Load Balancer does not have a listener configured, then the policy does not evaluate.

The policy passes if the Classic Load Balancer listeners are configured with TLS or HTTPS for front-end connections.

The policy fails if the listener is not configured with TLS or HTTPS for front-end connections.

Before you start to use a load balancer, you must add one or more listeners. A listener is a process that uses the configured protocol and port to check for connection requests. Listeners can support both HTTP and HTTPS/TLS protocols. You should always use an HTTPS or TLS listener, so that the load balancer does the work of encryption and decryption in transit.

This rule is covered by the [elb-configure-https-tls-termination-classic-load-balancer](../../policies/elb-configure-https-tls-termination-classic-load-balancer.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - elb-configure-https-tls-termination-classic-load-balancer.sentinel

      Description:
        This policy checks if resources of type 'aws_elb' have listeners
        configured with HTTPS or TLS termination

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy elb-configure-https-tls-termination-classic-load-balancer.

      ✓ Found 0 resource violations

      elb-configure-https-tls-termination-classic-load-balancer.sentinel:60:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - elb-configure-https-tls-termination-classic-load-balancer.sentinel

      Description:
        This policy checks if resources of type 'aws_elb' have listeners
        configured with HTTPS or TLS termination

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elb-configure-https-tls-termination-classic-load-balancer.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_elb.this
          | ✗ failed
          | Classic Load Balancer listeners should be configured with HTTPS or TLS termination. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elb-controls.html#elb-3 for more details.


      elb-configure-https-tls-termination-classic-load-balancer.sentinel:60:1 - Rule "main"
        Value:
          false
```

---