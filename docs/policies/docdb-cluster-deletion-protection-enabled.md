# AWS DocumentDB clusters should have deletion protection enabled

| Provider            | Category |
| ------------------- | -------- |
| Amazon Web Services | Storage  |

## Description

This control checks whether an Amazon DocumentDB cluster has deletion protection enabled. The control fails if the cluster doesn't have deletion protection enabled.

Enabling cluster deletion protection offers an additional layer of protection against accidental database deletion or deletion by an unauthorized user. An Amazon DocumentDB cluster can't be deleted while deletion protection is enabled. You must first disable deletion protection before a delete request can succeed. Deletion protection is enabled by default when you create a cluster in the Amazon DocumentDB console.

This rule is covered by the [docdb-cluster-deletion-protection-enabled](../../policies/docdb/docdb-cluster-deletion-protection-enabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - docdb-cluster-deletion-protection-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_docdb_cluster' have the
        'deletion_protection'
        attribute set to true

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy docdb-cluster-deletion-protection-enabled.

      ✓ Found 0 resource violations

      docdb-cluster-deletion-protection-enabled.sentinel:47:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - docdb-cluster-deletion-protection-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_docdb_cluster' have the
        'deletion_protection'
        attribute set to true

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy docdb-cluster-deletion-protection-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_docdb_cluster.docdb
          | ✗ failed
          | Attribute 'deletion_protection' should be true for AWS DocumentDb Cluster. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/documentdb-controls.html#documentdb-5 for more details.


      docdb-cluster-deletion-protection-enabled.sentinel:47:1 - Rule "main"
        Value:
          false
```

---
