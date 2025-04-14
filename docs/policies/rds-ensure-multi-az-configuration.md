# AWS RDS instance should be configured with Multi AZ

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Security     |

## Description

This control checks whether high availability is enabled for your RDS DB instances.

RDS DB instances should be configured for multiple Availability Zones (AZs). This ensures the availability of the data stored. 
Multi-AZ deployments allow for automated failover if there is an issue with AZ availability and during regular RDS maintenance.


This rule is covered by the [rds-ensure-multi-az-configuration](../../policies/rds/rds-ensure-multi-az-configuration.sentinel) policy.

```bash
trace:

    Pass - rds-ensure-multi-az-configuration.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` to have `multi_az`
      set to true

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-ensure-multi-az-configuration.

    ✓ Found 0 resource violations

    rds-ensure-multi-az-configuration.sentinel:45:1 - Rule "main"
      Value:
        true


```

---

## Policy Results (Fail)
```bash
trace:

    Fail - rds-ensure-multi-az-configuration.sentinel

    Description:
      This policy requires resources of type `aws_db_instance` to have `multi_az`
      set to true

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-ensure-multi-az-configuration.

    Found 1 resource violations

    → Module name: root
       ↳ Resource Address: aws_db_instance.default
         | ✗ failed
         | Attribute 'multi_az' must be set to true for 'aws_db_instance' and 'aws_rds_cluster' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-5 for more details.


    rds-ensure-multi-az-configuration.sentinel:45:1 - Rule "main"
      Value:
        false
```

---