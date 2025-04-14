# AWS DMS Replication Instances should have the publicly_accessible attribute set to false

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether AWS DMS replication instances are public. To do this, it examines the value of the PubliclyAccessible field.

A private replication instance has a private IP address that you cannot access outside of the replication network. A replication instance should have a private IP address when the source and target databases are in the same network. The network must also be connected to the replication instance's VPC using a VPN, AWS Direct Connect, or VPC peering.

This rule is covered by the [dms-replication-instances-should-not-be-public](../../policies/dms/dms-replication-instances-should-not-be-public.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - dms-replication-instances-should-not-be-public.sentinel

      Description:
        This policy checks if resources of type 'aws_dms_replication_instance' have
        the 'publicly_accessible'
        attribute set to false

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy dms-replication-instances-should-not-be-public.

      ✓ Found 0 resource violations

      dms-replication-instances-should-not-be-public.sentinel:46:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - dms-replication-instances-should-not-be-public.sentinel

      Description:
        This policy checks if resources of type 'aws_dms_replication_instance' have
        the 'publicly_accessible'
        attribute set to false

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy dms-replication-instances-should-not-be-public.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_dms_replication_instance.this
          | ✗ failed
          | Attribute 'publicly_accessible' should be false for AWS DMS Replication Instance. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/dms-controls.html#dms-1 for more details.


      dms-replication-instances-should-not-be-public.sentinel:46:1 - Rule "main"
        Value:
          false
```

---
