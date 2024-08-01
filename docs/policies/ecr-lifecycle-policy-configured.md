# ECR repositories should have at least one lifecycle policy configured

| Provider            | Category     |
|---------------------|--------------|
| Amazon Web Services | Containers   |

## Description

DISCLAIMER - This policy works when all resources are present in the same module

This policy checks whether an Amazon ECR repository has at least one lifecycle policy configured. This policy fails if an ECR repository does not have any lifecycle policies configured.

Amazon ECR lifecycle policies enable you to specify the lifecycle management of images in a repository. By configuring lifecycle policies, you can automate the cleanup of unused images and the expiration of images based on age or count. Automating these tasks can help you avoid unintentionally using outdated images in your repository.

This rule is covered by the [ecr-lifecycle-policy-configured](../../policies/ecr-lifecycle-policy-configured.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - network-firewall-logging-enabled.sentinel

    Description:
      This policy ensures that resources of type 'aws_networkfirewall_firewall' have
      logging enabled

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy network-firewall-logging-enabled.

    ✓ Found 0 resource violations

    network-firewall-logging-enabled.sentinel:82:1 - Rule "main"
      Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - ecr-lifecycle-policy-configured.sentinel

      Description:
        This policy ensures that resources of type 'aws_ecr_repository' have
        a lifecycle policy configured

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy ecr-lifecycle-policy-configured.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_ecr_repository.this2
          | ✗ failed
          | ECR repositories should have at least one lifecycle policy configured. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/ecr-controls.html#ecr-3 for more details.


      ecr-lifecycle-policy-configured.sentinel:82:1 - Rule "main"
        Value:
          false
```

---