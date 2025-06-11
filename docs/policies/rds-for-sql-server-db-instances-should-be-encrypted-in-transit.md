# RDS for SQL Server DB instances should be encrypted in transit

| Provider            | Category        |
| ------------------- | --------------- |
| Amazon Web Services | Data Protection |

## Description

This control checks whether a connection to an Amazon RDS for Microsoft SQL Server DB instance is encrypted in transit. The control fails if the rds.force_ssl parameter of the parameter group associated with the DB instance is set to 0 (off).

Data in transit refers to data that moves from one location to another, such as between nodes in a DB cluster or between a DB cluster and a client application. Data can move across the internet or within a private network. Encrypting data in transit reduces the risk of unauthorized users eavesdropping on network traffic.

This rule is covered by the [rds-for-sql-server-db-instances-should-be-encrypted-in-transit](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-for-sql-server-db-instances-should-be-encrypted-in-transit.sentinel).
The policy is parameterized and "resource" param value should be "aws_db_instance".

## Policy Results (Pass)

```bash
    Pass - rds-for-sql-server-db-instances-should-be-encrypted-in-transit.sentinel

    Description:
        This control checks whether a connection to an Amazon RDS for Microsoft SQL
        Server DB instance is encrypted in transit.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy rds-for-sql-server-db-instances-should-be-encrypted-in-transit.

    ✓ Found 0 resource violations

    rds-for-sql-server-db-instances-should-be-encrypted-in-transit.sentinel:84:1 - Rule "main"
        Value:
            true

```

---

## Policy Results (Fail)

```bash
    Fail - rds-for-sql-server-db-instances-should-be-encrypted-in-transit.sentinel

    Description:
        This control checks whether a connection to an Amazon RDS for Microsoft SQL
        Server DB instance is encrypted in transit.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy rds-for-sql-server-db-instances-should-be-encrypted-in-transit.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_db_instance.sql_server_instance
        | ✗ failed
        | RDS for SQL Server DB instances should be encrypted in transit. Ensure parameter group has rds.force_ssl=1 and is associated with SQL Server instances. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/rds-controls.html#rds-41 for more details.


    rds-for-sql-server-db-instances-should-be-encrypted-in-transit.sentinel:84:1 - Rule "main"
        Value:
            false

```

---
