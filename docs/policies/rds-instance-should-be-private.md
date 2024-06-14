# AWS RDS instance should be private

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Security     |

## Description

This control checks whether Amazon RDS instances are publicly accessible by evaluating the PubliclyAccessible field in the instance configuration item.

This rule is covered by the [rds-instance-should-be-private](../../policies/rds-instance-should-be-private.sentinel) policy.

```bash
trace:

    Pass - rds-instance-should-be-private.sentinel

    Description:
      This policy checks if the aws rds instances are publicly accessible

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-instance-should-be-private.

    ✓ Found 0 resource violations

    rds-instance-should-be-private.sentinel:51:1 - Rule "main"
      Value:
        true

```

---

## Policy Results (Fail)
```bash
trace:

    Fail - rds-instance-should-be-private.sentinel

    Description:
      This policy checks if the aws rds instances are publicly accessible

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-instance-should-be-private.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_db_instance.default
         | ✗ failed
         | Attribute 'publicly_accessible' should be false for aws_db_instance resource. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-2 for more details.


    rds-instance-should-be-private.sentinel:51:1 - Rule "main"
      Value:
        false
        
```

---