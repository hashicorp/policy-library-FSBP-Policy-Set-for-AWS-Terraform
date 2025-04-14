#  Amazon Dynamo DB accelerator clusters should have encryption at rest enabled

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Storage      |

## Description

This control checks whether a DAX cluster is encrypted at rest.

This rule is covered by the [dynamo-db-accelerator-clusters-encryption-at-rest-enabled](../../policies/dynamo-db/dynamo-db-accelerator-clusters-encryption-at-rest-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - dynamo-db-accelerator-clusters-encryption-at-rest-enabled.sentinel

    Description:
    This policy requires that  `server_side_encryption` attribute of the
    `aws_dax_cluster` resource has `enabled` set to true

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy dynamo-db-accelerator-clusters-encryption-at-rest-enabled.

    ✓ Found 0 resource violations

    dynamo-db-accelerator-clusters-encryption-at-rest-enabled.sentinel:47:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - dynamo-db-accelerator-clusters-encryption-at-rest-enabled.sentinel

    Description:
    This policy requires that  `server_side_encryption` attribute of the
    `aws_dax_cluster` resource has `enabled` set to true

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy dynamo-db-accelerator-clusters-encryption-at-rest-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_dax_cluster.example
        | ✗ failed
        | Attribute 'server_side_encryption' must have 'enabled' set to true for 'aws_dax_cluster' resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/dynamodb-controls.html#dynamodb-3 for more details.


    dynamo-db-accelerator-clusters-encryption-at-rest-enabled.sentinel:47:1 - Rule "main"
    Value:
        false
```

---