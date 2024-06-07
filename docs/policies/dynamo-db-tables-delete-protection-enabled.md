#  Amazon Dynamo DB tables should have delete protection enabled

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Storage      |

## Description

This control checks whether an Amazon DynamoDB table has deletion protection enabled. The control fails if a DynamoDB table doesn't have deletion protection enabled.

This rule is covered by the [dynamo-db-tables-delete-protection-enabled](../../policies/dynamo-db-tables-delete-protection-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - dynamo-db-tables-delete-protection-enabled.sentinel

    Description:
    This policy requires that  `dynamo-db-tables-delete-protection-enabled`
    attribute of the `aws_dynamodb_table` resource is set to true

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy dynamo-db-tables-delete-protection-enabled.

    ✓ Found 0 resource violations

    dynamo-db-tables-delete-protection-enabled.sentinel:46:1 - Rule "main"
    Value:
    true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - dynamo-db-tables-delete-protection-enabled.sentinel

    Description:
    This policy requires that  `dynamo-db-tables-delete-protection-enabled`
    attribute of the `aws_dynamodb_table` resource is set to true

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy dynamo-db-tables-delete-protection-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_dynamodb_table.example
        | ✗ failed
        | Attribute 'deletion_protection_enabled' must be set to true for 'aws_dynamodb_table' resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/dynamodb-controls.html#dynamodb-6 for more details.


    dynamo-db-tables-delete-protection-enabled.sentinel:46:1 - Rule "main"
    Value:
        false
```

---