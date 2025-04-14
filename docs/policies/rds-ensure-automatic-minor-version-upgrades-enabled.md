# AWS RDS DB instances should have automatic minor version upgrade enabled

| Provider            | Category  |
|---------------------|-----------|
| Amazon Web Services | Security  |

## Description

This control checks whether automatic minor version upgrades are enabled for the RDS database instance.

Enabling automatic minor version upgrades ensures that the latest minor version updates to the relational database management system (RDBMS) are installed. These upgrades might include security patches and bug fixes. Keeping up to date with patch installation is an important step in securing systems.


This rule is covered by the [rds-ensure-automatic-minor-version-upgrades-enabled](../../policies/rds/rds-ensure-automatic-minor-version-upgrades-enabled.sentinel) policy.

## Policy Results (Pass)

```bash
  trace:
  Pass - rds-ensure-automatic-minor-version-upgrades-enabled.sentinel

  Description:
    This policy requires resources of type `aws_db_instance` have attribute
    "auto_minor_version_upgrade" set to true.

  Print messages:

  → → Overall Result: true

  This result means that all resources have passed the policy check for the policy rds-ensure-automatic-minor-version-upgrades-enabled.

  ✓ Found 0 resource violations

  rds-ensure-automatic-minor-version-upgrades-enabled.sentinel:44:1 - Rule "main"
    Value:
      true
```

---

## Policy Results (Fail)
```bash
trace:
  Fail - rds-ensure-automatic-minor-version-upgrades-enabled.sentinel

  Description:
    This policy requires resources of type `aws_db_instance` have attribute
    "auto_minor_version_upgrade" set to true.

  Print messages:

  → → Overall Result: false

  This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-ensure-automatic-minor-version-upgrades-enabled.

  Found 1 resource violations

  → Module name: root
    ↳ Resource Address: aws_db_instance.default
      | ✗ failed
      | Attribute 'auto_minor_version_upgrade' must be set to true for 'aws_db_instance' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-13 for more details.


  rds-ensure-automatic-minor-version-upgrades-enabled.sentinel:44:1 - Rule "main"
    Value:
      false
```

---