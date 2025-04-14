# AWS RDS cluster ensure IAM authentication configured

| Provider            | Category |
|---------------------|----------|
| Amazon Web Services | Security |

## Description

This control checks whether an Amazon RDS DB cluster has IAM database authentication enabled.


This rule is covered by the [rds-ensure-deletion-protection-enabled](../../policies/rds/rds-ensure-deletion-protection-enabled.sentinel) policy.
Param which needs to be passed is "resource_type" with value - "aws_rds_cluster"

```bash
trace:
    Pass - rds-ensure-cluster-iam-auth-configured.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` and `aws_rds_cluster`
      to have `iam_database_authentication_enabled` set to true

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-ensure-db-instance-have-iam-auth-configured.

    ✓ Found 0 resource violations

    rds-ensure-cluster-iam-auth-configured.sentinel:59:1 - Rule "main"
      Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - rds-ensure-cluster-iam-auth-configured.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` and `aws_rds_cluster` to have `iam_database_authentication_enabled` set to true

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-ensure-db-instance-have-iam-auth-configured.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_rds_cluster.default
         | ✗ failed
         | Attribute 'iam_database_authentication_enabled' must be set to true for 'aws_rds_cluster' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-12 for more details.


    rds-ensure-cluster-iam-auth-configured.sentinel:59:1 - Rule "main"
      Value:
        false
```

---