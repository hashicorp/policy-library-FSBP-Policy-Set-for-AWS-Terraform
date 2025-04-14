# ECR private repositories should have tag immutability configured

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Containers   |

## Description

This policy checks whether a private ECR repository has tag immutability enabled. This policy fails if a private ECR repository has tag immutability disabled. This rule passes if tag immutability is enabled and has the value IMMUTABLE.

Amazon ECR Tag Immutability enables customers to rely on the descriptive tags of an image as a reliable mechanism to track and uniquely identify images. An immutable tag is static, which means each tag refers to a unique image. This improves reliability and scalability as the use of a static tag will always result in the same image being deployed. When configured, tag immutability prevents the tags from being overridden, which reduces the attack surface.

This rule is covered by the [ecr-tag-immutability-configured](../../policies/ecr/ecr-tag-immutability-configured.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - ecr-tag-immutability-configured.sentinel

      Description:
        This policy checks if resources of type 'aws_ecr_repository' have
        tag immutability configured

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy ecr-tag-immutability-configured.

      ✓ Found 0 resource violations

      ecr-tag-immutability-configured.sentinel:43:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - ecr-tag-immutability-configured.sentinel

      Description:
        This policy checks if resources of type 'aws_ecr_repository' have
        tag immutability configured

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ecr-tag-immutability-configured.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_ecr_repository.name
          | ✗ failed
          | ECR private repositories should have tag immutability configured. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ecr-controls.html#ecr-2 for more details.


      ecr-tag-immutability-configured.sentinel:43:1 - Rule "main"
        Value:
          false
```

---