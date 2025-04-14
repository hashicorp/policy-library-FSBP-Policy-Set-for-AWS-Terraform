# AWS DMS Endpoint resource should have the 'ssl_security_protocol' attribute is 'ssl-encryption' in 'redis_settings' for engine of type redis

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether an AWS DMS endpoint for Redis OSS is configured with a TLS connection. The control fails if the endpoint doesn't have TLS enabled.

TLS provides end-to-end security when data is sent between applications or databases over the internet. When you configure SSL encryption for your DMS endpoint, it enables encrypted communication between the source and target databases during the migration process. This helps prevent eavesdropping and interception of sensitive data by malicious actors

This rule is covered by the [dms-redis-tls-enabled](../../policies/dms/dms-redis-tls-enabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - dms-redis-tls-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_dms_endpoint' have the
        'ssl_security_protocol'
        set to 'ssl-encryption' in 'redis_settings' for engine of type 'redis'

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy dms-redis-tls-enabled.

      ✓ Found 0 resource violations

      dms-redis-tls-enabled.sentinel:55:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - dms-redis-tls-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_dms_endpoint' have the
        'ssl_security_protocol'
        set to 'ssl-encryption' in 'redis_settings' for engine of type 'redis'

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy dms-redis-tls-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_dms_endpoint.test
          | ✗ failed
          | Attribute 'ssl_security_protocol' should be 'ssl-encrypted' in 'redis_settings' for engine of type 'redis' in AWS DMS Endpoint. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/dms-controls.html#dms-12 for more details.


      dms-redis-tls-enabled.sentinel:55:1 - Rule "main"
        Value:
          false
```

---
