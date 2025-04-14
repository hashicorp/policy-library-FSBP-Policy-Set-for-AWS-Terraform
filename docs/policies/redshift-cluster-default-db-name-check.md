# AWS Redshift Cluster should have the database_name attribute not set to 'dev' (default_value)

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether an Amazon Redshift cluster has changed the database name from its default value. The control will fail if the database name for a Redshift cluster is set to dev.

When creating a Redshift cluster, you should change the default database name to a unique value. Default names are public knowledge and should be changed upon configuration. As an example, a well-known name could lead to inadvertent access if it was used in IAM policy conditions.

This rule is covered by the [redshift-cluster-default-db-name-check](../../policies/redshift/redshift-cluster-default-db-name-check.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - redshift-cluster-default-db-name-check.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' have the
        'database_name'
        attribute not set to 'dev' (default value)

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy redshift-cluster-default-db-name-check.

      ✓ Found 0 resource violations

      redshift-cluster-default-db-name-check.sentinel:47:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - redshift-cluster-default-db-name-check.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' have the
        'database_name'
        attribute not set to 'dev' (default value)

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy redshift-cluster-default-db-name-check.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_redshift_cluster.rscluster
          | ✗ failed
          | Attribute 'database_name' should not be 'dev' (default value) for AWS Redshift Cluster. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/redshift-controls.html#redshift-9 for more details.


      redshift-cluster-default-db-name-check.sentinel:47:1 - Rule "main"
        Value:
          false
```

---
