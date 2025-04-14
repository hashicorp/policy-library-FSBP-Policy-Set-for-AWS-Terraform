#  Amazon Dynamo DB tables should scale its read and write capacity as needed

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Storage      |

## Description

This control checks whether an Amazon DynamoDB table can scale its read and write capacity as needed. The control fails if the table doesn't use on-demand capacity mode or provisioned mode with auto scaling configured. By default, this control only requires that one of these modes be configured, without regard to specific levels of read or write capacity. Optionally, you can provide custom parameter values to require specific levels of read and write capacity or target utilization.


This rule is covered by the [dynamo-db-tables-scales-capacity-with-demand](../../policies/dynamo-db/dynamo-db-tables-scales-capacity-with-demand.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - dynamo-db-tables-scales-capacity-with-demand.sentinel

    Description:
    This policy requires that `aws_dynamodb_table` resources with 'billing_mode'
    attribute set to 'PROVISIONED'
    have autoscaling configured

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy dynamo-db-tables-scales-capacity-with-demand.

    ✓ Found 0 resource violations

    dynamo-db-tables-scales-capacity-with-demand.sentinel:113:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - dynamo-db-tables-scales-capacity-with-demand.sentinel

    Description:
    This policy requires that `aws_dynamodb_table` resources with 'billing_mode'
    attribute set to 'PROVISIONED'
    have autoscaling configured

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy dynamo-db-tables-scales-capacity-with-demand.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_dynamodb_table.my_table
        | ✗ failed
        | Autoscaling is not enabled for 'aws_dynamodb_table' resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/dynamodb-controls.html#dynamodb-1 for more details.


    dynamo-db-tables-scales-capacity-with-demand.sentinel:113:1 - Rule "main"
    Value:
        false
```

---