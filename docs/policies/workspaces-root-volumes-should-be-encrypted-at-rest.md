# AWS WorkSpaces root volumes should be encrypted at rest

| Provider            | Category        |
| ------------------- | --------------- |
| Amazon Web Services | Data Protection |

## Description

This control checks whether a root volume in an Amazon WorkSpaces WorkSpace is encrypted at rest. The control fails if the WorkSpace root volume isn't encrypted at rest.

Data at rest refers to data that's stored in persistent, non-volatile storage for any duration. Encrypting data at rest helps you protect its confidentiality, which reduces the risk that an unauthorized user can access it.

This rule is covered by the [workspaces-root-volumes-should-be-encrypted-at-rest](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/workspaces/workspaces-root-volumes-should-be-encrypted-at-rest.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - workspaces-root-volumes-should-be-encrypted-at-rest.sentinel

    Description:
      This control checks whether a root volume in an Amazon WorkSpaces WorkSpace is
      encrypted at rest.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy workspaces-root-volumes-should-be-encrypted-at-rest.

    ✓ Found 0 resource violations

    workspaces-root-volumes-should-be-encrypted-at-rest.sentinel:44:1 - Rule "main"
      Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
    Fail - workspaces-root-volumes-should-be-encrypted-at-rest.sentinel

    Description:
      This control checks whether a root volume in an Amazon WorkSpaces WorkSpace is
      encrypted at rest.

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy workspaces-root-volumes-should-be-encrypted-at-rest.

    Found 1 resource violations

    → Module name: root
      ↳ Resource Address: aws_workspaces_workspace.explicitly_non_compliant
        | ✗ failed
        | Attribute 'root_volume_encryption_enabled' must be set to true for 'aws_workspaces_workspace' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/workspaces-controls.html#workspaces-2 for more details.


    workspaces-root-volumes-should-be-encrypted-at-rest.sentinel:44:1 - Rule "main"
      Value:
        false
```

---
