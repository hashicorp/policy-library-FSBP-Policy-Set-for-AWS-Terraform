# ECS Fargate services should run on the latest Fargate platform version

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Compute      |

## Description

This policy checks if Amazon ECS Fargate services are running the latest Fargate platform version. This policy fails if the platform version is not the latest.

AWS Fargate platform versions refer to a specific runtime environment for Fargate task infrastructure, which is a combination of kernel and container runtime versions. New platform versions are released as the runtime environment evolves. For example, a new version may be released for kernel or operating system updates, new features, bug fixes, or security updates. Security updates and patches are deployed automatically for your Fargate tasks. If a security issue is found that affects a platform version, AWS patches the platform version.

This rule is covered by the [ecs-service-platform-compatibility](../../policies/ecs-service-platform-compatibility.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - ecs-fargate-service-platform-compatibility.sentinel

      Description:
        This policy checks if resources of type 'aws_ecs_service' with
        launch_type as 'FARGATE' points to the 'LATEST' platform version

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy ecs-fargate-service-platform-compatibility.

      ✓ Found 0 resource violations

      ecs-fargate-service-platform-compatibility.sentinel:52:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - ecs-fargate-service-platform-compatibility.sentinel

      Description:
        This policy checks if resources of type 'aws_ecs_service' with
        launch_type as 'FARGATE' points to the 'LATEST' platform version

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ecs-fargate-service-platform-compatibility.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_ecs_service.name
          | ✗ failed
          | ECS fargate based services should always run on the latest Farget plaform version. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ecs-controls.html#ecs-10 for more details


      ecs-fargate-service-platform-compatibility.sentinel:59:1 - Rule "main"
        Value:
          false
```

---