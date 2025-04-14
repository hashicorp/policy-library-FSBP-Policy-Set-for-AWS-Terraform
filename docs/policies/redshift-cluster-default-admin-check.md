# AWS Redshift Cluster should have the master_username attribute not set to null or 'awsuser' (default_value)

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether an Amazon Redshift cluster has changed the admin username from its default value. This control will fail if the admin username for a Redshift cluster is set to awsuser.

When creating a Redshift cluster, you should change the default admin username to a unique value. Default usernames are public knowledge and should be changed upon configuration. Changing the default usernames reduces the risk of unintended access.

This rule is covered by the [redshift-cluster-default-admin-check](../../policies/redshift/redshift-cluster-default-admin-check.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - redshift-cluster-default-admin-check.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' have the
        'master_username'
        attribute not set to null or 'awsuser' (default value)

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy redshift-cluster-default-admin-check.

      ✓ Found 0 resource violations

      redshift-cluster-default-admin-check.sentinel:48:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - redshift-cluster-default-admin-check.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' have the
        'master_username'
        attribute not set to null or 'awsuser' (default value)

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy redshift-cluster-default-admin-check.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_redshift_cluster.rscluster
          | ✗ failed
          | Attribute 'master_username' should not be null or 'awsuser' (default value) for AWS Redshift Cluster. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/redshift-controls.html#redshift-8 for more details.


      redshift-cluster-default-admin-check.sentinel:48:1 - Rule "main"
        Value:
          false
```

---
