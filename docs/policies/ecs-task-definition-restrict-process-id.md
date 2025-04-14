# ECS task definitions should not share the host's process namespace

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Compute      |

## Description

This policy checks if Amazon ECS task definitions are configured to share a host's process namespace with its containers. The policy fails if the task definition shares the host's process namespace with the containers running on it. This policy only evaluates the latest active revision of an Amazon ECS task definition.

A process ID (PID) namespace provides separation between processes. It prevents system processes from being visible, and allows PIDs to be reused, including PID 1. If the host's PID namespace is shared with containers, it would allow containers to see all of the processes on the host system. This reduces the benefit of process level isolation between the host and the containers. These circumstances could lead to unauthorized access to processes on the host itself, including the ability to manipulate and terminate them. Customers shouldn't share the host's process namespace with containers running on it.

This rule is covered by the [ecs-task-definition-restrict-process-id](../../policies/ecs/ecs-task-definition-restrict-process-id.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - ecs-task-definition-restrict-process-id.sentinel

      Description:
        This policy checks if the 'pidMode' attribute for resources of
        type 'aws_ecs_task_definition' is equal to 'host'

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy ecs-task-definition-restrict-process-id.

      ✓ Found 0 resource violations

      ecs-task-definition-restrict-process-id.sentinel:43:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - ecs-task-definition-restrict-process-id.sentinel

      Description:
        This policy checks if the 'pidMode' attribute for resources of
        type 'aws_ecs_task_definition' is equal to 'host'

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ecs-task-definition-restrict-process-id.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_ecs_task_definition.service
          | ✗ failed
          | Containers in a task definition should not share the same process namespace as that of the host. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ecs-controls.html#ecs-3 for more details.


      ecs-task-definition-restrict-process-id.sentinel:43:1 - Rule "main"
        Value:
          false
```

---