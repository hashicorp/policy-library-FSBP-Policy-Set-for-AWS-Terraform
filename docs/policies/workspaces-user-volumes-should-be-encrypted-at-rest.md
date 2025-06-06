# AWS WAF web ACLs should have at least one rule or rule group

| Provider            | Category        |
| ------------------- | --------------- |
| Amazon Web Services | Data Protection |

## Description

This control checks whether a user volume in an Amazon WorkSpaces WorkSpace is encrypted at rest. The control fails if the WorkSpace user volume isn't encrypted at rest.

Data at rest refers to data that's stored in persistent, non-volatile storage for any duration. Encrypting data at rest helps you protect its confidentiality, which reduces the risk that an unauthorized user can access it.

This rule is covered by the [workspaces-user-volumes-should-be-encrypted-at-rest](../../policies/workspaces/workspaces-user-volumes-should-be-encrypted-at-rest.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
    Pass - workspaces-user-volumes-should-be-encrypted-at-rest.sentinel

    Description:
      This control checks whether a user volume in an Amazon WorkSpaces WorkSpace is
      encrypted at rest.

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy workspaces-user-volume-encryption-enabled.

    ✓ Found 0 resource violations

    workspaces-user-volumes-should-be-encrypted-at-rest.sentinel:44:1 - Rule "main"
      Value:
        true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - workspaces-user-volumes-should-be-encrypted-at-rest.sentinel

      Description:
        This control checks whether a user volume in an Amazon WorkSpaces WorkSpace is
        encrypted at rest.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy workspaces-user-volume-encryption-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_workspaces_workspace.example
          | ✗ failed
          | WorkSpaces user volumes should be encrypted at rest. Set 'user_volume_encryption_enabled' to true for 'aws_workspaces_workspace' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/workspaces-controls.html#workspaces-1 for more details.


      workspaces-user-volumes-should-be-encrypted-at-rest.sentinel:44:1 - Rule "main"
        Value:
          false
```

---
