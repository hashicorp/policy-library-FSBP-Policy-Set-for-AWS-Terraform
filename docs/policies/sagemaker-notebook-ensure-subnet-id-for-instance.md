# AWS Sagemaker Notebook instance should be launched in custom vpc

| Provider            | Category         |
| ------------------- | ---------------- |
| Amazon Web Services | Machine Learning |

## Description

This control checks if an Amazon SageMaker notebook instance is launched within a custom virtual private cloud (VPC). This control fails if a SageMaker notebook instance is not launched within a custom VPC or if it is launched in the SageMaker service VPC.

Subnets are a range of IP addresses within a VPC. We recommend keeping your resources inside a custom VPC whenever possible to ensure secure network protection of your infrastructure. An Amazon VPC is a virtual network dedicated to your AWS account. With an Amazon VPC, you can control the network access and internet connectivity of your SageMaker Studio and notebook instances.

This rule is covered by the [sagemaker-notebook-ensure-subnet-id-for-instance](../../policies/sagemaker-notebook-ensure-subnet-id-for-instance.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - sagemaker-notebook-ensure-subnet-id-for-instance.sentinel

      Description:
        This policy checks if resources of type 'aws_sagemaker_instance'
        is launched in custom vpc

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy sagemaker-notebook-ensure-subnet-id-for-instance.

      ✓ Found 0 resource violations

      sagemaker-notebook-ensure-subnet-id-for-instance.sentinel:69:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - sagemaker-notebook-ensure-subnet-id-for-instance.sentinel

      Description:
        This policy checks if resources of type 'aws_sagemaker_instance'
        is launched in custom vpc

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy sagemaker-notebook-ensure-subnet-id-for-instance.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_sagemaker_notebook_instance.simple_notebook_instance
          | ✗ failed
          | Attribute 'subnet_id' should be launched in custom vpc for AWS Sagemaker Notebook Instance. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/sagemaker-controls.html#sagemaker-2 for more details.


      sagemaker-notebook-ensure-subnet-id-for-instance.sentinel:69:1 - Rule "main"
        Value:
          false
```

---
