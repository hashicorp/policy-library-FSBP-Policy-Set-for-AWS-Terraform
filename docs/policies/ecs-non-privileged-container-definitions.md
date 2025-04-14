# ECS containers should run as non-privileged

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | CSP category |

## Description

This policy checks if the privileged parameter in the container definition of Amazon ECS Task Definitions is set to true. The policy fails if this parameter is equal to true. This policy only evaluates the latest active revision of an Amazon ECS task definition.

We recommend that you remove elevated privileges from your ECS task definitions. When the privilege parameter is true, the container is given elevated privileges on the host container instance (similar to the root user).

This rule is covered by the [ecs-non-privileged-container-definitions](../../policies/ecs/ecs-non-privileged-container-definitions.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - ecs-non-privileged-container-definitions.sentinel

      Description:
        This policy checks if the container definitions have the 'privileged'
        parameter set to true and fails if that is the case.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy ecs-non-privileged-container-definitions.

      ✓ Found 0 resource violations

      ecs-non-privileged-container-definitions.sentinel:65:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - ecs-non-privileged-container-definitions.sentinel

      Description:
        This policy checks if the container definitions have the 'privileged'
        parameter set to true and fails if that is the case.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ecs-non-privileged-container-definitions.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_ecs_task_definition.service
          | ✗ failed
          | Container definitions within task definitions should not have the privileged parameter set to 'true'. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ecs-policys.html#ecs-4 for more details.


      ecs-non-privileged-container-definitions.sentinel:65:1 - Rule "main"
        Value:
          false

---