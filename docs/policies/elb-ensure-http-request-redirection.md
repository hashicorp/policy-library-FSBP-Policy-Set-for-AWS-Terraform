# Application Load Balancer should be configured to redirect all HTTP requests to HTTPS

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Networking   |

## Description

This policy checks whether HTTP to HTTPS redirection is configured on all HTTP listeners of Application Load Balancers. The policy fails if any of the HTTP listeners of Application Load Balancers do not have HTTP to HTTPS redirection configured.

Before you start to use your Application Load Balancer, you must add one or more listeners. A listener is a process that uses the configured protocol and port to check for connection requests. Listeners support both the HTTP and HTTPS protocols. You can use an HTTPS listener to offload the work of encryption and decryption to your load balancer. To enforce encryption in transit, you should use redirect actions with Application Load Balancers to redirect client HTTP requests to an HTTPS request on port 443.

This rule is covered by the [elb-ensure-http-request-redirection](../../policies/elb/elb-ensure-http-request-redirection.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - elb-ensure-http-request-redirection.sentinel

      Description:
        This policy ensures that application load balancer in the terraform
        configurations
        have a listener rule configured to redirect HTTP requests to HTTPS

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy elb-ensure-http-request-redirection.

      ✓ Found 0 resource violations

      elb-ensure-http-request-redirection.sentinel:184:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - elb-ensure-http-request-redirection.sentinel

      Description:
        This policy ensures that application load balancer in the terraform
        configurations
        have a listener rule configured to redirect HTTP requests to HTTPS

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elb-ensure-http-request-redirection.

      Found 1 resource violations

      → Module name: module.lb
        ↳ Resource Address: module.lb.aws_lb.this2
          | ✗ failed
          | Application load balancers should be configured to redirect all HTTP requests to HTTPS. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elb-controls.html#elb-1 for more details.


      elb-ensure-http-request-redirection.sentinel:184:1 - Rule "main"
        Value:
          false
```

---