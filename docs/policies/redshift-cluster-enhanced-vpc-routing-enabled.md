# AWS Redshift Cluster should have the enhanced_vpc_routing attribute set to true

| Provider            | Category |
| ------------------- | -------- |
| Amazon Web Services |  Storage |

## Description

This control checks whether an Amazon Redshift cluster has EnhancedVpcRouting enabled.

Enhanced VPC routing forces all COPY and UNLOAD traffic between the cluster and data repositories to go through your VPC. You can then use VPC features such as security groups and network access control lists to secure network traffic. You can also use VPC Flow Logs to monitor network traffic.

This rule is covered by the [redshift-cluster-enhanced-vpc-routing-enabled](../../policies/redshift/redshift-cluster-enhanced-vpc-routing-enabled.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - redshift-cluster-enhanced-vpc-routing-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' have the
        'enhanced_vpc_routing'
        attribute set to true

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy redshift-cluster-enhanced-vpc-routing-enabled.

      ✓ Found 0 resource violations

      redshift-cluster-enhanced-vpc-routing-enabled.sentinel:46:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - redshift-cluster-enhanced-vpc-routing-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_redshift_cluster' have the
        'enhanced_vpc_routing'
        attribute set to true

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy redshift-cluster-enhanced-vpc-routing-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_redshift_cluster.rscluster
          | ✗ failed
          | Attribute 'enhanced_vpc_routing' should be true for AWS Redshift Cluster. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/redshift-controls.html#redshift-7 for more details.


      redshift-cluster-enhanced-vpc-routing-enabled.sentinel:46:1 - Rule "main"
        Value:
          false
```

---
