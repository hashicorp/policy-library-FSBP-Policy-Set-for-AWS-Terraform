# AWS Redshift Serverless namespaces should not use the default admin username

| Provider            | Category               |
| ------------------- | ---------------------- |
| Amazon Web Services | Resource configuration |

## Description

This control checks whether the admin username for an Amazon Redshift Serverless namespace is the default admin username, admin. The control fails if the admin username for the Redshift Serverless namespace is admin. You can optionally specify a list of admin usernames for the control to include in the evaluation.

When creating an Amazon Redshift Serverless namespace, you should specify a custom admin username for the namespace. The default admin username is public knowledge. By specifying a custom admin username, you can, for example, help mitigate the risk or effectiveness of brute force attacks against the namespace.

This rule is covered by the [redshift-serverless-namespaces-should-not-use-the-default-admin-username](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/redshiftserverless/redshift-serverless-namespaces-should-not-use-the-default-admin-username.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - redshift-serverless-namespaces-should-not-use-the-default-admin-username.sentinel

        Description:
            This control checks whether the admin username for an Amazon Redshift
            Serverless namespace is the default admin username, admin.

        Print messages:

        false
        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy redshift-serverless-default-admin-check.

        ✓ Found 0 resource violations

        redshift-serverless-namespaces-should-not-use-the-default-admin-username.sentinel:53:1 - Rule "main"
            Value:
                true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - redshift-serverless-namespaces-should-not-use-the-default-admin-username.sentinel

        Description:
            This control checks whether the admin username for an Amazon Redshift
            Serverless namespace is the default admin username, admin.

        Print messages:

        false
        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy redshift-serverless-default-admin-check.

        Found 1 resource violations

        → Module name: root
            ↳ Resource Address: aws_redshiftserverless_namespace.compliant_namespace
                | ✗ failed
                | Redshift Serverless namespaces should not use the default admin username 'admin'. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/redshiftserverless-controls.html#redshiftserverless-5 for more details.


        redshift-serverless-namespaces-should-not-use-the-default-admin-username.sentinel:53:1 - Rule "main"
            Value:
                false
```

---
