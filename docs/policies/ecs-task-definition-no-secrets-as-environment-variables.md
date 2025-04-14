# Secrets should not be passed as container environment variables

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Compute      |

## Description

This policy checks if the key value of any variables in the environment parameter of container definitions includes AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, or ECS_ENGINE_AUTH_DATA. This policy fails if a single environment variable in any container definition equals AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, or ECS_ENGINE_AUTH_DATA. This policy does not cover environmental variables passed in from other locations such as Amazon S3. This policy only evaluates the latest active revision of an Amazon ECS task definition.

AWS Systems Manager Parameter Store can help you improve the security posture of your organization. We recommend using the Parameter Store to store secrets and credentials instead of directly passing them into your container instances or hard coding them into your code.

This rule is covered by the [ecs-task-definition-no-secrets-as-environment-variables](../../policies/ecs/ecs-task-definition-no-secrets-as-environment-variables.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - ecs-task-definition-no-secrets-as-environment-variables.sentinel

      Description:
        This policy checks if the container definitions contain non allow listed
        secrets as environment variables

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy ecs-task-definition-no-secrets-as-environment-variables.

      ✓ Found 0 resource violations

      ecs-task-definition-no-secrets-as-environment-variables.sentinel:77:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - ecs-task-definition-no-secrets-as-environment-variables.sentinel

      Description:
        This policy checks if the container definitions contain non allow listed
        secrets as environment variables

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ecs-task-definition-no-secrets-as-environment-variables.

      Found 2 resource violations

      → Module name: root
        ↳ Resource Address: aws_ecs_task_definition.service
          | ✗ failed
          | Container definitions in ECS task definitions should not contain the following environment variables - AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, ECS_ENGINE_AUTH_DATA. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ecs-controls.html#ecs-8 for more details.
        ↳ Resource Address: aws_ecs_task_definition.service_2
          | ✗ failed
          | Container definitions in ECS task definitions should not contain the following environment variables - AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, ECS_ENGINE_AUTH_DATA. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ecs-controls.html#ecs-8 for more details.


      ecs-task-definition-no-secrets-as-environment-variables.sentinel:77:1 - Rule "main"
        Value:
          false
```

---