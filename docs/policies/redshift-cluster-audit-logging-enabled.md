# AWS Redshift Cluster should have the enable attribute set to true in logging or referenced to the resource 'aws_redshift_logging'

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services |  Security |

## Description

This control checks whether an Amazon Redshift cluster has audit logging enabled.

Amazon Redshift audit logging provides additional information about connections and user activities in your cluster. This data can be stored and secured in Amazon S3 and can be helpful in security audits and investigations. For more information, see Database audit logging in the Amazon Redshift Management Guide.

This rule is covered by the [redshift-cluster-audit-logging-enabled](../../policies/redshift/redshift-cluster-audit-logging-enabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - redshift-cluster-audit-logging-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' have the
        enable attribute set to true in logging or referenced to the
        resource 'aws_redshift_logging'

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy redshift-cluster-audit-logging-enabled.

      ✓ Found 0 resource violations

      redshift-cluster-audit-logging-enabled.sentinel:84:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - redshift-cluster-audit-logging-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' have the
        enable attribute set to true in logging or referenced to the
        resource 'aws_redshift_logging'

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy redshift-cluster-audit-logging-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_redshift_cluster.rscluster
          | ✗ failed
          | Parameter 'logging' should be enabled or referenced to resource AWS Redshift Logging for AWS Redshift Parameter Group. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/redshift-controls.html#redshift-4 for more details.


      redshift-cluster-audit-logging-enabled.sentinel:84:1 - Rule "main"
        Value:
          false
```

---
