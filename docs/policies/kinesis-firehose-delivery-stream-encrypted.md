# Firehose delivery streams should be encrypted at rest

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether an Amazon Data Firehose delivery stream is encrypted at rest with server-side encryption. This control fails if a Firehose delivery stream isn't encrypted at rest with server-side encryption.

Server-side encryption is a feature in Amazon Data Firehose delivery streams that automatically encrypts data before it's at rest by using a key created in AWS Key Management Service (AWS KMS). Data is encrypted before it's written to the Data Firehose stream storage layer, and decrypted after it’s retrieved from storage. This allows you to comply with regulatory requirements and enhance the security of your data.

This rule is covered by the [kinesis-firehose-delivery-stream-encrypted](../../policies/kinesis/kinesis-firehose-delivery-stream-encrypted.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - kinesis-firehose-delivery-stream-encrypted.sentinel

    Description:
    This policy requires `aws_kinesis_firehose_delivery_stream` resources to have
    server-side encryption enabled.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy firehose-server-side-encryption-enabled.

    ✓ Found 0 resource violations

    kinesis-firehose-delivery-stream-encrypted.sentinel:52:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
    Fail - kinesis-firehose-delivery-stream-encrypted.sentinel

    Description:
    This policy requires `aws_kinesis_firehose_delivery_stream` resources to have
    server-side encryption enabled.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy firehose-server-side-encryption-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_kinesis_firehose_delivery_stream.extended_s3_stream
        | ✗ failed
        | Attribute 'server_side_encryption' must have the enabled set to true for 'aws_kinesis_firehose_delivery_stream' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/datafirehose-controls.html#datafirehose-1 for more details.


    kinesis-firehose-delivery-stream-encrypted.sentinel:52:1 - Rule "main"
    Value:
        false
```

---
