# AWS Connections to Redshift Serverless workgroups should be required to use SSL

| Provider            | Category        |
| ------------------- | --------------- |
| Amazon Web Services | Data Protection |

## Description

This control checks whether connections to an Amazon Redshift Serverless workgroup are required to encrypt data in transit. The control fails if the require_ssl configuration parameter for the workgroup is set to false.

An Amazon Redshift Serverless workgroup is a collection of compute resources that groups together compute resources like RPUs, VPC subnet groups, and security groups. Properties of a workgroup include network and security settings. These settings specify whether connections to a workgroup should be required to use SSL to encrypt data in transit.

This rule is covered by the [redshift-serverless-workgroups-should-be-required-to-use-ssl.sentinel](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/redshiftserverless/redshift-serverless-workgroups-should-be-required-to-use-ssl.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - redshift-serverless-workgroups-should-be-required-to-use-ssl.sentinel

        Description:
        This control checks whether connections to an Amazon Redshift Serverless
        workgroup are required to encrypt data in transit.

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy redshift-serverless-require-ssl.

        ✓ Found 0 resource violations

        redshift-serverless-workgroups-should-be-required-to-use-ssl.sentinel:62:1 - Rule "main"
        Value:
            true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - redshift-serverless-workgroups-should-be-required-to-use-ssl.sentinel

        Description:
            This control checks whether connections to an Amazon Redshift Serverless
            workgroup are required to encrypt data in transit.

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy redshift-serverless-require-ssl.

        Found 1 resource violations

        → Module name: root
            ↳ Resource Address: aws_redshiftserverless_workgroup.non_compliant
                | ✗ failed
                | Connections to Redshift Serverless workgroups should be required to use SSL. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/redshiftserverless-controls.html#redshiftserverless-2 for more details.


        redshift-serverless-workgroups-should-be-required-to-use-ssl.sentinel:62:1 - Rule "main"
            Value:
                false
```

---
