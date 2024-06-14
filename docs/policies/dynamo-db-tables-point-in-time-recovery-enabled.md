#  Amazon Dynamo DB tables should have point in time recovery enabled

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Storage      |

## Description

This control checks whether point-in-time recovery (PITR) is enabled for an Amazon DynamoDB table.

This rule is covered by the [dynamo-db-tables-point-in-time-recovery-enabled](../../policies/dynamo-db-tables-point-in-time-recovery-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - dynamo-db-tables-point-in-time-recovery-enabled.sentinel

    Description:
    This policy requires that  `point_in_time_recovery` attribute of the
    `aws_dynamodb_table` resource has `enabled` set to true

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy dynamo-db-tables-point-in-time-recovery-enabled.

    ✓ Found 0 resource violations

    dynamo-db-tables-point-in-time-recovery-enabled.sentinel:47:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - dynamo-db-tables-point-in-time-recovery-enabled.sentinel

    Description:
    This policy requires that  `point_in_time_recovery` attribute of the
    `aws_dynamodb_table` resource has `enabled` set to true

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy dynamo-db-tables-point-in-time-recovery-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_dynamodb_table.example
        | ✗ failed
        | Attribute 'point_in_time_recovery' must have 'enabled' set to true for 'aws_dynamodb_table' resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/dynamodb-controls.html#dynamodb-2 for more details.


    dynamo-db-tables-point-in-time-recovery-enabled.sentinel:47:1 - Rule "main"
    Value:
        false
```

---