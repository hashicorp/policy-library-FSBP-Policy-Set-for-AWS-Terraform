# AWS Redshift Cluster should have the publicly_accessable attribute set to false

| Provider            | Category |
| ------------------- | -------- |
| Amazon Web Services |  Storage |

## Description

This control checks whether Amazon Redshift clusters are publicly accessible. It evaluates the PubliclyAccessible field in the cluster configuration item.

The PubliclyAccessible attribute of the Amazon Redshift cluster configuration indicates whether the cluster is publicly accessible. When the cluster is configured with PubliclyAccessible set to true, it is an Internet-facing instance that has a publicly resolvable DNS name, which resolves to a public IP address.

This rule is covered by the [redshift-cluster-public-access-check](../../policies/redshift/redshift-cluster-public-access-check.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - redshift-cluster-public-access-check.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' have the
        'publicly_accessible'
        attribute set to false

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy redshift-cluster-public-access-check.

      ✓ Found 0 resource violations

      redshift-cluster-public-access-check.sentinel:47:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - redshift-cluster-public-access-check.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' have the
        'publicly_accessible'
        attribute set to false

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy redshift-cluster-public-access-check.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_redshift_cluster.rscluster_1
          | ✗ failed
          | Attribute 'publicly_accessible' should be false for AWS Redshift Cluster. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/redshift-controls.html#redshift-1 for more details.


      redshift-cluster-public-access-check.sentinel:47:1 - Rule "main"
        Value:
          false
```

---
