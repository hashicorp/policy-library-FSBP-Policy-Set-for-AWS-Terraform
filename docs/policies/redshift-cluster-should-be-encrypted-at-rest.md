# AWS Redshift Cluster should have the encrypted attribute set to true

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks if Amazon Redshift clusters are encrypted at rest. The control fails if a Redshift cluster isn't encrypted at rest or if the encryption key is different from the provided key in the rule parameter.

In Amazon Redshift, you can turn on database encryption for your clusters to help protect data at rest. When you turn on encryption for a cluster, the data blocks and system metadata are encrypted for the cluster and its snapshots. Encryption of data at rest is a recommended best practice because it adds a layer of access management to your data. Encrypting Redshift clusters at rest reduces the risk that an unauthorized user can access the data stored on disk.

This rule is covered by the [redshift-cluster-should-be-encrypted-at-rest](../../policies/redshift-cluster-should-be-encrypted-at-rest.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - redshift-cluster-should-be-encrypted-at-rest.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' have the
        'encrypted'
        attribute set to true

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy redshift-cluster-should-be-encrypted-at-rest.

      ✓ Found 0 resource violations

      redshift-cluster-should-be-encrypted-at-rest.sentinel:46:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - redshift-cluster-should-be-encrypted-at-rest.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' have the
        'encrypted'
        attribute set to true

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy redshift-cluster-should-be-encrypted-at-rest.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_redshift_cluster.rscluster
          | ✗ failed
          | Attribute 'encrypted' should be true for AWS Redshift Cluster. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/redshift-controls.html#redshift-10 for more details.


      redshift-cluster-should-be-encrypted-at-rest.sentinel:46:1 - Rule "main"
        Value:
          false
```

---
