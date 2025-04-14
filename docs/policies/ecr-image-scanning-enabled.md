# ECR private repositories should have image scanning configured

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Containers   |

## Description

This policy checks whether a private Amazon ECR repository has image scanning configured. The policy fails if the private ECR repository isn't configured for scan on push or continuous scanning.

ECR image scanning helps in identifying software vulnerabilities in your container images. Configuring image scanning on ECR repositories adds a layer of verification for the integrity and safety of the images being stored.

This rule is covered by the [ecr-image-scanning-enabled](../../policies/ecr/ecr-image-scanning-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - ecr-image-scanning-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_ecr_repository' have
        image scanning configuration enabled

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy ecr-image-scanning-enabled.

      ✓ Found 0 resource violations

      ecr-image-scanning-enabled.sentinel:48:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - ecr-image-scanning-enabled.sentinel

      Description:
        This policy checks if resources of type 'aws_ecr_repository' have
        image scanning configuration enabled

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ecr-image-scanning-enabled.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_ecr_repository.name
          | ✗ failed
          | ECR private repositories should have image scanning configured. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ecr-controls.html#ecr-1 for more details.


      ecr-image-scanning-enabled.sentinel:48:1 - Rule "main"
        Value:
          false
```

---