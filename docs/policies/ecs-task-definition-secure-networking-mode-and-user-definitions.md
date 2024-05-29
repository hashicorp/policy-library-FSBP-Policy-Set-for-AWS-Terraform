# Amazon ECS task definitions should have secure networking modes and user definitions

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Compute      |

## Description

This policy checks whether an active Amazon ECS task definition with host networking mode has privileged or user container definitions. The policy fails for task definitions that have host network mode and container definitions of privileged=false, empty and user=root, or empty.

This policy only evaluates the latest active revision of an Amazon ECS task definition.

The purpose of this policy is to ensure that access is defined intentionally when you run tasks that use the host network mode. If a task definition has elevated privileges, it is because you have chosen that configuration. This control checks for unexpected privilege escalation when a task definition has host networking enabled, and you don't choose elevated privileges.

This rule is covered by the [ecs-task-definition-secure-networking-mode-and-user-definitions](../../policies/ecs-task-definition-secure-networking-mode-and-user-definitions.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - ecs-task-definition-secure-networking-mode-and-user-definitions.sentinel

      Description:
        This policy checks if the task definition with host networking mode has
        unprivileged or user container definitions.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy ecs-task-definition-secure-networking-mode-and-user-definitions.

      ✓ Found 0 resource violations

      ecs-task-definition-secure-networking-mode-and-user-definitions.sentinel:115:1 - Rule "main"
        Value:
          true

      ecs-task-definition-secure-networking-mode-and-user-definitions.sentinel:107:1 - Rule "check_non_privileged_container_definitions"
        Value:
          true

      ecs-task-definition-secure-networking-mode-and-user-definitions.sentinel:111:1 - Rule "check_user_container_definitions"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - ecs-task-definition-secure-networking-mode-and-user-definitions.sentinel

      Description:
        This policy checks if the task definition with host networking mode has
        unprivileged or user container definitions.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ecs-task-definition-secure-networking-mode-and-user-definitions.

      Found 2 resource violations

      → Module name: root
        ↳ Resource Address: aws_ecs_task_definition.service
          | ✗ failed
          | Attribute 'privileged' should be true for container definitions for the given task definition. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ecs-controls.html#ecs-1 for more details.
        ↳ Resource Address: aws_ecs_task_definition.service
          | ✗ failed
          | Attribute 'user' should be non empty and should not be 'root' for container definitions for the given task definition. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ecs-controls.html#ecs-1 for more details.


      ecs-task-definition-secure-networking-mode-and-user-definitions.sentinel:115:1 - Rule "main"
        Value:
          false

      ecs-task-definition-secure-networking-mode-and-user-definitions.sentinel:107:1 - Rule "check_non_privileged_container_definitions"
        Value:
          false
```

---