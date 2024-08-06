# AWS Sagemaker Endpoint Configuration should have the initial_instance_count greater than one for the production_variants atribute

| Provider            | Category         |
| ------------------- | ---------------- |
| Amazon Web Services | Machine Learning |

## Description

This control checks whether production variants of an Amazon SageMaker endpoint have an initial instance count greater than 1. The control fails if the endpoint's production variants have only 1 initial instance.

Production variants running with an instance count greater than 1 permit multi-AZ instance redundancy managed by SageMaker. Deploying resources across multiple Availability Zones is an AWS best practice to provide high availability within your architecture. High availability helps you to recover from security incidents.

This rule is covered by the [sagemaker-endpoint-config-prod-instance-count-check](../../policies/sagemaker-endpoint-config-prod-instance-count-check.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - sagemaker-endpoint-config-prod-instance-count-check.sentinel

      Description:
        This policy checks if resources of type 'aws_sagemaker_endpoint_configuration'
        have the 'initial_instance_count'
        in 'production_variants' attribute greater than 1

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy sagemaker-endpoint-config-prod-instance-count-check.

      ✓ Found 0 resource violations

      sagemaker-endpoint-config-prod-instance-count-check.sentinel:58:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - sagemaker-endpoint-config-prod-instance-count-check.sentinel

      Description:
        This policy checks if resources of type 'aws_sagemaker_endpoint_configuration'
        have the 'initial_instance_count'
        in 'production_variants' attribute greater than 1

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy sagemaker-endpoint-config-prod-instance-count-check.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_sagemaker_endpoint_configuration.ec
          | ✗ failed
          | Attribute 'initial_instance_count' should be greater than '1' for AWS Sagemaker Endpoint Configuration. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/sagemaker-controls.html#sagemaker-4 for more details.


      sagemaker-endpoint-config-prod-instance-count-check.sentinel:58:1 - Rule "main"
        Value:
          false
```

---
