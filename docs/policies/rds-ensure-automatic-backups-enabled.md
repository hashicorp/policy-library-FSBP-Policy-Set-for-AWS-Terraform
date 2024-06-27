# AWS RDS DB instances should have automatic backups enabled

| Provider            | Category |
|---------------------|----------|
| Amazon Web Services | Storage  |

## Description

This control checks whether an Amazon Relational Database Service instance has automated backups enabled, and a backup retention period greater than or equal to the specified time frame. 
Read replicas are excluded from evaluation. 

The control fails if backups aren't enabled for the instance, or if the retention period is less than the specified time frame. 
Unless you provide a custom parameter value for the backup retention period, Security Hub uses a default value of 7 days.

This rule is covered by the [rds-ensure-automatic-backups-enabled](../../policies/rds-ensure-automatic-backups-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
     Pass - rds-ensure-automatic-backups-enabled.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` have attribute
      "backup_retention_period" set to integer value between (7, 35).

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-encryption-at-rest-enabled.

    ✓ Found 0 resource violations

    rds-ensure-automatic-backups-enabled.sentinel:45:1 - Rule "main"
      Value:
        true
```

---

## Policy Results (Fail)
```bash
    trace:
      Fail - rds-ensure-automatic-backups-enabled.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` have attribute
      "backup_retention_period" set to integer value between (7, 35).

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-encryption-at-rest-enabled.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_db_instance.default
         | ✗ failed
         | Attribute 'backup_retention_period' must be set to integer between (7, 35) for 'aws_db_instance' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-11 for more details.


    rds-ensure-automatic-backups-enabled.sentinel:45:1 - Rule "main"
      Value:
        false      
```

---