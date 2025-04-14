# AWS Redshift Cluster should have the require_ssl parameter in the AWS Redshift Parameter Group set to true

| Provider            | Category  |
| ------------------- | --------  |
| Amazon Web Services | Security  |

## Description

This control checks whether connections to Amazon Redshift clusters are required to use encryption in transit. The check fails if the Amazon Redshift cluster parameter require_SSL isn't set to True.

TLS can be used to help prevent potential attackers from using person-in-the-middle or similar attacks to eavesdrop on or manipulate network traffic. Only encrypted connections over TLS should be allowed. Encrypting data in transit can affect performance. You should test your application with this feature to understand the performance profile and the impact of TLS.

This rule is covered by the [redshift-cluster-should-be-encrypted-at-transit](../../policies/redshift/redshift-cluster-should-be-encrypted-at-transit.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - redshift-cluster-should-be-encrypted-at-transit.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' refernced to
        the
        resources of type 'aws_redshift_parameter_group' and having the 'require_ssl'
        set to 'true'

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy redshift-cluster-public-access-check.

      ✓ Found 0 resource violations

      redshift-cluster-should-be-encrypted-at-transit.sentinel:89:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - redshift-cluster-should-be-encrypted-at-transit.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' refernced to
        the
        resources of type 'aws_redshift_parameter_group' and having the 'require_ssl'
        set to 'true'

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy redshift-cluster-public-access-check.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_redshift_cluster.rscluster
          | ✗ failed
          | Parameter 'require_ssl' should be true for AWS Redshift Parameter Group. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/redshift-controls.html#redshift-2 for more details.


      redshift-cluster-should-be-encrypted-at-transit.sentinel:83:1 - Rule "main"
        Value:
          false
```

---
