# Classic Load Balancers with SSL/HTTPS listeners should use a certificate provided by AWS Certificate Manager

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Networking   |

## Description

This policy checks whether the Classic Load Balancer uses HTTPS/SSL certificates provided by AWS Certificate Manager (ACM). The policy fails if the Classic Load Balancer configured with HTTPS/SSL listener does not use a certificate provided by ACM.

To create a certificate, you can use either ACM or a tool that supports the SSL and TLS protocols, such as OpenSSL. Security Hub recommends that you use ACM to create or import certificates for your load balancer.

ACM integrates with Classic Load Balancers so that you can deploy the certificate on your load balancer. You also should automatically renew these certificates.

This rule is covered by the [elb-ensure-ssl-listener-acm-cert-classic-load-balancer](../../policies/elb-ensure-ssl-listener-acm-cert-classic-load-balancer.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - elb-ensure-ssl-listener-acm-cert-classic-load-balancer.sentinel

      Description:
        This policy checks if resources of type 'aws_elb' have
        HTTPS/SSL listeners configured with certs from acm.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy elb-ensure-ssl-listener-acm-cert-classic-load-balancer.

      ✓ Found 0 resource violations

      elb-ensure-ssl-listener-acm-cert-classic-load-balancer.sentinel:70:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - elb-ensure-ssl-listener-acm-cert-classic-load-balancer.sentinel

      Description:
        This policy checks if resources of type 'aws_elb' have
        HTTPS/SSL listeners configured with certs from acm.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elb-ensure-ssl-listener-acm-cert-classic-load-balancer.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_elb.this
          | ✗ failed
          | Classic Load Balancers with SSL/HTTPS listeners should use a certificate provided by AWS Certificate Manager. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elb-controls.html#elb-2 for more details.


      elb-ensure-ssl-listener-acm-cert-classic-load-balancer.sentinel:71:1 - Rule "main"
        Value:
          false
```

---