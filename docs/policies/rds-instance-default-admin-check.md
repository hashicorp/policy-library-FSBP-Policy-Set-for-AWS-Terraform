# AWS RDS DB Instance should have the username attribute not set to 'admin' (default_value)

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether you've changed the administrative username for Amazon Relational Database Service (Amazon RDS) database instances from the default value. The control does not apply to engines of the type neptune (Neptune DB) or docdb (DocumentDB). The control fails if the administrative username is set to the default value.

Default administrative usernames on Amazon RDS databases are public knowledge. When creating an Amazon RDS database, you should change the default administrative username to a unique value to reduce the risk of unintended access.

This rule is covered by the [rds-instance-default-admin-check](../../policies/rds/rds-instance-default-admin-check.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - rds-instance-default-admin-check.sentinel

      Description:
        This policy checks if resources of type 'aws_db_instance' have the 'username'
        attribute not set to 'admin' (default value)

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy rds-instance-default-admin-check.

      ✓ Found 0 resource violations

      rds-instance-default-admin-check.sentinel:47:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - rds-instance-default-admin-check.sentinel

      Description:
        This policy checks if resources of type 'aws_db_instance' have the 'username'
        attribute not set to 'admin' (default value)

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-instance-default-admin-check.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_db_instance.default
          | ✗ failed
          | Attribute 'username' should not be 'admin' (default value) for AWS RDS DB Instance. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-25 for more details.


      rds-instance-default-admin-check.sentinel:47:1 - Rule "main"
        Value:
          false
```

---
