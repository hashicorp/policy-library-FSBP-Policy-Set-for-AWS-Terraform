# AWS Redshift Serverless workgroups should prohibit public access

| Provider            | Category                     |
| ------------------- | ---------------------------- |
| Amazon Web Services | Secure network configuration |

## Description

This control checks whether public access is disabled for an Amazon Redshift Serverless workgroup. It evaluates the publiclyAccessible property of a Redshift Serverless workgroup. The control fails if public access is enabled (true) for the workgroup.

The public access (publiclyAccessible) setting for an Amazon Redshift Serverless workgroup specifies whether the workgroup can be accessed from a public network. If public access is enabled (true) for a workgroup, Amazon Redshift creates an Elastic IP address that makes the workgroup publicly accessible from outside the VPC. If you don't want a workgroup to be publicly accessible, disable public access for it.

This rule is covered by the [redshift-serverless-workgroups-should-prohibit-public-access](../../policies/redshiftserverless/redshift-serverless-workgroups-should-prohibit-public-access.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - redshift-serverless-workgroups-should-prohibit-public-access.sentinel

    Description:
      This control checks whether public access is disabled for an Amazon Redshift
      Serverless workgroup.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy redshift-serverless-workgroup-no-public-access.

    ✓ Found 0 resource violations

    redshift-serverless-workgroups-should-prohibit-public-access.sentinel:44:1 - Rule "main"
      Value:
        true

```

---

## Policy Results (Fail)

```bash
trace:
      Fail - redshift-serverless-workgroups-should-prohibit-public-access.sentinel

      Description:
        This control checks whether public access is disabled for an Amazon Redshift
        Serverless workgroup.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy redshift-serverless-workgroup-no-public-access.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_redshiftserverless_workgroup.default_compliant_workgroup
          | ✗ failed
          | Redshift Serverless workgroups should prohibit public access. Set 'publicly_accessible' to false. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/redshiftserverless-controls.html#redshiftserverless-3 for more details.


      redshift-serverless-workgroups-should-prohibit-public-access.sentinel:44:1 - Rule "main"
        Value:
          false
```

---
