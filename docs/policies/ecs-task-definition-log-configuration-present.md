# ECS task definitions should have a logging configuration

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Compute      |

## Description

This policy checks if the latest active Amazon ECS task definition has a logging configuration specified. The policy fails if the task definition doesn't have the logConfiguration property defined or if the value for logDriver is null in at least one container definition.

Logging helps you maintain the reliability, availability, and performance of Amazon ECS. Collecting data from task definitions provides visibility, which can help you debug processes and find the root cause of errors. If you are using a logging solution that does not have to be defined in the ECS task definition (such as a third party logging solution), you can disable this policy after ensuring that your logs are properly captured and delivered.

This rule is covered by the [ecs-task-definition-log-configuration-present](../../policies/ecs/ecs-task-definition-log-configuration-present.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - ecs-task-definition-log-configuration-present.sentinel

      Description:
        This policy checks if all container definitions of a given
        'aws_ecs_task_definition'
        resource contains a non empty value for the logConfiguration.logDriver
        attribute.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy ecs-task-definition-log-configuration-present.

      ✓ Found 0 resource violations

      ecs-task-definition-log-configuration-present.sentinel:65:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - ecs-task-definition-log-configuration-present.sentinel

      Description:
        This policy checks if all container definitions of a given
        'aws_ecs_task_definition'
        resource contains a non empty value for the logConfiguration.logDriver
        attribute.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ecs-task-definition-log-configuration-present.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_ecs_task_definition.service
          | ✗ failed
          | Attribute logConfiguration.logDriver should be non empty in container definitions for the given task definition. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ecs-controls.html#ecs-9 for more details.


      ecs-task-definition-log-configuration-present.sentinel:65:1 - Rule "main"
        Value:
          false
```

---