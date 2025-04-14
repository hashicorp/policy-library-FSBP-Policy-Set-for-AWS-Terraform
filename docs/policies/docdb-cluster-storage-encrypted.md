# AWS DocumentDB clusters should be encrypted at rest

| Provider            | Category |
| ------------------- | -------- |
| Amazon Web Services | Storage  |

## Description

This policy checks whether an Amazon DocumentDB cluster is encrypted at rest. The policy fails if an Amazon DocumentDB cluster isn't encrypted at rest.

Data at rest refers to any data that's stored in persistent, non-volatile storage for any duration. Encryption helps you protect the confidentiality of such data, reducing the risk that an unauthorized user gets access to it. Data in Amazon DocumentDB clusters should be encrypted at rest for an added layer of security. Amazon DocumentDB uses the 256-bit Advanced Encryption Standard (AES-256) to encrypt your data using encryption keys stored in AWS Key Management Service (AWS KMS).

This rule is covered by the [docdb-cluster-storage-encrypted](../../policies/docdb/docdb-cluster-storage-encrypted.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - docdb-cluster-storage-encrypted.sentinel

      Description:
        This policy checks if the container definitions have the 'storage_encrypted' set to true.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy docdb-cluster-storage-encrypted.

      ✓ Found 0 resource violations

      docdb-cluster-storage-encrypted.sentinel:49:1 - Rule "main"
        Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - docdb-cluster-storage-encrypted.sentinel

      Description:
        This policy checks if the container definitions have the 'storage_encrypted' set to true.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy docdb-cluster-storage-encrypted.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_docdb_cluster.docdb
          | ✗ failed
          | Attribute 'storage_encrypted' must be true for 'aws_docdb_cluster' resources.Refer https://docs.aws.amazon.com/securityhub/latest/userguide/documentdb-controls.html#documentdb-1 to  for more details.


      docdb-cluster-storage-encrypted.sentinel:48:1 - Rule "main"
        Value:
          false
```

---
