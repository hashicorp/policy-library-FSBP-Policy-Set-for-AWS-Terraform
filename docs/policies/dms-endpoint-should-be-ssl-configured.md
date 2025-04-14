# AWS DMS Endpoint resource should have the certificate for ssl configured

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether an AWS DMS endpoint uses an SSL connection. The control fails if the endpoint doesn't use SSL.

SSL/TLS connections provide a layer of security by encrypting connections between DMS replication instances and your database. Using certificates provides an extra layer of security by validating that the connection is being made to the expected database. It does so by checking the server certificate that is automatically installed on all database instances that you provision. By enabling SSL connection on your DMS endpoints, you protect the confidentiality of the data during the migration.

This rule is covered by the [dms-endpoint-should-be-ssl-configured](../../policies/dms/dms-endpoint-should-be-ssl-configured.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - dms-endpoint-should-be-ssl-configured.sentinel

      Description:
        This policy checks if resources of type 'aws_dms_endpoint' have the
        'certificate_arn'
        shouldn't be empty

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy dms-endpoint-should-be-ssl-configured.

      ✓ Found 0 resource violations

      dms-endpoint-should-be-ssl-configured.sentinel:50:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - dms-endpoint-should-be-ssl-configured.sentinel

      Description:
        This policy checks if resources of type 'aws_dms_endpoint' have the
        'certificate_arn'
        shouldn't be empty

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy dms-endpoint-should-be-ssl-configured.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_dms_endpoint.test
          | ✗ failed
          | Attribute 'certificate_arn' shouldn't be empty for AWS DMS Endpoint. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/dms-controls.html#dms-9 for more details.


      dms-endpoint-should-be-ssl-configured.sentinel:50:1 - Rule "main"
        Value:
          false
```

---
