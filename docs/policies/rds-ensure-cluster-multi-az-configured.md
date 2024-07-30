# AWS RDS cluster should be configured for multiple Availability Zones

| Provider            | Category   |
|---------------------|------------|
| Amazon Web Services | Resilience |

## Description

This control checks whether high availability is enabled for your RDS DB clusters. 
The control fails if an RDS DB cluster isn't deployed in multiple Availability Zones (AZs).

This rule is covered by the [rds-ensure-cluster-multi-az-configured](../../policies/rds-ensure-cluster-multi-az-configured.sentinel) policy.

## Policy Results (Pass)
```bash
    Pass - rds-ensure-cluster-multi-az-configured.sentinel

    Description:
      This policy requires resources of type `aws_rds_cluster` to be configured for
      multiple availability zones

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-ensure-cluster-multi-az-configured.

    ✓ Found 0 resource violations

    rds-ensure-cluster-multi-az-configured.sentinel:44:1 - Rule "main"
      Value:
        true

```

---

## Policy Results (Fail)
```bash
    Fail - rds-ensure-cluster-multi-az-configured.sentinel

    Description:
      This policy requires resources of type `aws_rds_cluster` to be configured for
      multiple availability zones

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-ensure-cluster-multi-az-configured.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_rds_cluster.postgresql
         | ✗ failed
         | Attribute 'availability_zones' must have two or more values for 'aws_rds_cluster' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-15 for more details.


    rds-ensure-cluster-multi-az-configured.sentinel:44:1 - Rule "main"
      Value:
        false
```

---