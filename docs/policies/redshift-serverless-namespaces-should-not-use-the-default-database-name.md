# AWS Redshift Serverless namespaces should not use the default database name

| Provider            | Category               |
| ------------------- | ---------------------- |
| Amazon Web Services | Resource configuration |

## Description

This control checks whether an Amazon Redshift Serverless namespace uses the default database name, dev. The control fails if the Redshift Serverless namespace uses the default database name, dev.

When creating an Amazon Redshift Serverless namespace, you should specify a unique, custom value for the database name and not use the default database name, which is dev. The default database name is public knowledge. By specifying a different database name, you can mitigate risks such as unauthorized users inadvertently gaining access to data in the namespace.

This rule is covered by the [redshift-serverless-namespaces-should-not-use-the-default-database-name](../../policies/redshiftserverless/redshift-serverless-namespaces-should-not-use-the-default-database-name.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - redshift-serverless-namespaces-should-not-use-the-default-database-name.sentinel

        Description:
            This control checks whether an Amazon Redshift Serverless namespace uses the
            default database name, dev.

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy redshift-serverless-namespaces-should-not-use-the-default-database-name.

        ✓ Found 0 resource violations

        redshift-serverless-namespaces-should-not-use-the-default-database-name.sentinel:45:1 - Rule "main"
            Value:
                true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - redshift-serverless-namespaces-should-not-use-the-default-database-name.sentinel

        Description:
            This control checks whether an Amazon Redshift Serverless namespace uses the
            default database name, dev.

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy redshift-serverless-namespaces-should-not-use-the-default-database-name.

        Found 1 resource violations

        → Module name: root
            ↳ Resource Address: aws_redshiftserverless_namespace.non_compliant_namespace
                | ✗ failed
                | Redshift Serverless namespaces should not use the default database name 'dev'. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/redshiftserverless-controls.html#redshiftserverless-7 for more details.


        redshift-serverless-namespaces-should-not-use-the-default-database-name.sentinel:45:1 - Rule "main"
            Value:
                false
```

---
