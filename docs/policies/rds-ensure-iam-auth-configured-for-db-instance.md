# AWS RDS instance ensure IAM authentication configured

| Provider            | Category |
|---------------------|----------|
| Amazon Web Services | Security |

## Description

This control checks whether an RDS DB instance has IAM database authentication enabled. 
The control fails if IAM authentication is not configured for RDS DB instances. 
This control only evaluates RDS instances with the following engine types: mysql, postgres, aurora, aurora-mysql, aurora-postgresql, and mariadb.

This rule is covered by the [rds-ensure-deletion-protection-enabled](../../policies/rds/rds-ensure-deletion-protection-enabled.sentinel) policy.
Param which needs to be passed is "resource_type" with value - "aws_db_instance"

```bash
trace:

    Pass - rds-ensure-db-instance-iam-auth-configured.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` and `aws_rds_cluster` to have `iam_database_authentication_enabled` set to true

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-ensure-db-instance-have-iam-auth-configured.

    ✓ Found 0 resource violations

    rds-ensure-db-instance-iam-auth-configured.sentinel:59:1 - Rule "main"
      Value:
        true

    Pass - rds-ensure-monitoring-configured.sentinel

```

---

## Policy Results (Fail)
```bash
trace:

    Fail - rds-ensure-db-instance-iam-auth-configured.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` and `aws_rds_cluster` to have `iam_database_authentication_enabled` set to true

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-ensure-db-instance-have-iam-auth-configured.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_db_instance.default
         | ✗ failed
         | Attribute 'iam_database_authentication_enabled' must be set to true for 'aws_db_instance' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-10 for more details.


    rds-ensure-db-instance-iam-auth-configured.sentinel:59:1 - Rule "main"
      Value:
        false
        
```

---