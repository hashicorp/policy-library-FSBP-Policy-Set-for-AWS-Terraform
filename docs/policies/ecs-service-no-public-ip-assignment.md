# ECS services should not have public IP addresses assigned to them automatically

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Compute      |

## Description

This policy checks whether Amazon ECS services are configured to automatically assign public IP addresses. This policy fails if AssignPublicIP is ENABLED. This policy passes if AssignPublicIP is DISABLED.

A public IP address is an IP address that is reachable from the internet. If you launch your Amazon ECS instances with a public IP address, then your Amazon ECS instances are reachable from the internet. Amazon ECS services should not be publicly accessible, as this may allow unintended access to your container application servers.

This rule is covered by the [ecs-service-no-public-ip-assignment](../../policies/ecs-service-no-public-ip-assignment.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - ecs-service-no-public-ip-assignment.sentinel

      Description:
        This policy checks if resources of type 'aws_ecs_service' have
        the 'assign_public_ip' attribute under networking configuration
        set to true

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy ecs-service-no-public-ip-assignment.

      ✓ Found 0 resource violations

      ecs-service-no-public-ip-assignment.sentinel:50:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - ecs-service-no-public-ip-assignment.sentinel

      Description:
        This policy checks if resources of type 'aws_ecs_service' have
        the 'assign_public_ip' attribute under networking configuration
        set to true

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ecs-service-no-public-ip-assignment.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_ecs_service.this
          | ✗ failed
          | ECS services should not have public IPs assigned to them. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ecs-controls.html#ecs-2 for more details


      ecs-service-no-public-ip-assignment.sentinel:50:1 - Rule "main"
        Value:
          false
```

---