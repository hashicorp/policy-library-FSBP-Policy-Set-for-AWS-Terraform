# ECS containers should be limited to read-only access to root filesystems

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Compute      |

## Description

This policy checks if Amazon ECS containers are limited to read-only access to mounted root filesystems. The policy check fails if the readonlyRootFilesystem parameter is set to false or if the parameter doesn't exist in the container definition within the task definition. This policy only evaluates the latest active revision of an Amazon ECS task definition.

Enabling this option reduces security attack vectors since the container instance's filesystem cannot be tampered with or written to unless it has explicit read-write permissions on its filesystem folder and directories. This policy also adheres to the principle of least privilege.

This rule is covered by the [ecs-task-definition-read-only-root-file-system-access](../../policies/ecs/ecs-task-definition-read-only-root-file-system-access.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - ecs-task-definition-read-only-root-file-system-access.sentinel

      Description:
        This policy checks if the container definitions have the 'readOnlyRootFileSystem' 
        set to true.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy ecs-task-definition-read-only-root-file-system-access.

      ✓ Found 0 resource violations

      ecs-task-definition-read-only-root-file-system-access.sentinel:66:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - ecs-task-definition-read-only-root-file-system-access.sentinel

      Description:
        This policy checks if the container definitions have the 'readOnlyRootFileSystem' 
        set to true.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ecs-task-definition-read-only-root-file-system-access.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_ecs_task_definition.service
          | ✗ failed
          | Attribute 'readonlyRootFilesystem' should be true for container definitions for the given task definition. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ecs-controls.html#ecs-5 for more details.


      ecs-task-definition-read-only-root-file-system-access.sentinel:66:1 - Rule "main"
        Value:
          false
```

---