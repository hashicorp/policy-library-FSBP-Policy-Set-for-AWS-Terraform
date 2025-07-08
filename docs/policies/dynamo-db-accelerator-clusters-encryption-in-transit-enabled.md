#  Amazon Dynamo DB accelerator clusters should have encryption in transit enabled

| Provider            |       Category      |
| ------------------- |  -----------------  |
| Amazon Web Services |   Data Protection   |

## Description

This control checks whether an Amazon DynamoDB Accelerator (DAX) cluster is encrypted in transit, with the endpoint encryption type set to TLS. The control fails if the DAX cluster isn't encrypted in transit.

This rule is covered by the [dynamo-db-accelerator-clusters-encryption-in-transit-enabled](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/dynamo-db/dynamo-db-accelerator-clusters-encryption-in-transit-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - dynamo-db-accelerator-clusters-encryption-in-transit-enabled.sentinel

    Description:
    This policy requires that the `aws_dax_cluster` resource has
    `cluster_endpoint_encryption_type` attribute set to `TLS`

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy dynamo-db-accelerator-clusters-encryption-in-transit-enabled.

    ✓ Found 0 resource violations

    dynamo-db-accelerator-clusters-encryption-in-transit-enabled.sentinel:50:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - dynamo-db-accelerator-clusters-encryption-in-transit-enabled.sentinel

    Description:
    This policy requires that the `aws_dax_cluster` resource has
    `cluster_endpoint_encryption_type` attribute set to `TLS`

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy dynamo-db-accelerator-clusters-encryption-in-transit-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_dax_cluster.example
        | ✗ failed
        | Attribute 'cluster_endpoint_encryption_type' must be set to 'TLS' for 'aws_dax_cluster' resources.Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/dynamodb-controls.html#dynamodb-7 for more details.


    dynamo-db-accelerator-clusters-encryption-in-transit-enabled.sentinel:50:1 - Rule "main"
    Value:
        false
```

---