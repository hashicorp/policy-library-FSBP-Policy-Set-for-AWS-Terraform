# RDS instances should not use a database engine default port

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Security     |

## Description

This control checks whether an RDS cluster or instance uses a port other than the default port of the database engine. 
The control fails if the RDS cluster or instance uses the default port.

This rule is covered by the [rds-ensure-no-default-port](../../policies/rds/rds-ensure-no-default-port.sentinel) policy.

```bash
trace:

    Pass - rds-ensure-no-default-port.sentinel

    Description:
      This policy checks if the aws rds instances are publicly accessible

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-ensure-no-default-port.

    ✓ Found 0 resource violations

    rds-ensure-no-default-port.sentinel:83:1 - Rule "main"
      Value:
        true

```

---

## Policy Results (Fail)
```bash
trace:

    Fail - rds-ensure-no-default-port.sentinel

    Description:
      This policy checks if the aws rds instances are publicly accessible

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-ensure-no-default-port.

    Found 2 resource violations

    → Module name: root
       ↳ Resource Address: aws_db_instance.default
         | ✗ failed
         | Attribute 'port' should be defined with non default port value for aws_db_instance and aws_rds_cluster resource. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-23 for more details.
       ↳ Resource Address: aws_rds_cluster.default
         | ✗ failed
         | Attribute 'port' should be defined with non default port value for aws_db_instance and aws_rds_cluster resource. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-23 for more details.


    rds-ensure-no-default-port.sentinel:83:1 - Rule "main"
      Value:
        false

```

---