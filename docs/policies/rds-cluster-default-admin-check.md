# AWS RDS Cluster should have the master_username attribute not set to 'admin' (default_value)

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether an Amazon RDS database cluster has changed the admin username from its default value. The control does not apply to engines of the type neptune (Neptune DB) or docdb (DocumentDB). This rule will fail if the admin username is set to the default value.

When creating an Amazon RDS database, you should change the default admin username to a unique value. Default usernames are public knowledge and should be changed during RDS database creation. Changing the default usernames reduces the risk of unintended access.

This rule is covered by the [rds-cluster-default-admin-check](../../policies/rds/rds-cluster-default-admin-check.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - rds-cluster-default-admin-check.sentinel

      Description:
        This policy checks if resources of type 'aws_rds_cluster' have the
        'master_username'
        attribute not set to 'admin' (default value)

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy rds-cluster-default-admin-check.

      ✓ Found 0 resource violations

      rds-cluster-default-admin-check.sentinel:47:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - rds-cluster-default-admin-check.sentinel

      Description:
        This policy checks if resources of type 'aws_rds_cluster' have the
        'master_username'
        attribute not set to 'admin' (default value)

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-cluster-default-admin-check.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_rds_cluster.default
          | ✗ failed
          | Attribute 'master_username' should not be 'admin' (default value) for AWS RDS Cluster. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-24 for more details.


      rds-cluster-default-admin-check.sentinel:47:1 - Rule "main"
        Value:
          false
```

---
