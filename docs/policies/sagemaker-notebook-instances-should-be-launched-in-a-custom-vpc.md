# AWS SageMaker notebook instances should be launched in a custom VPC

| Provider            | Category                     |
| ------------------- | ---------------------------- |
| Amazon Web Services | Secure network configuration |

## Description

This control checks if an Amazon SageMaker AI notebook instance is launched within a custom virtual private cloud (VPC). This control fails if a SageMaker AI notebook instance is not launched within a custom VPC or if it is launched in the SageMaker AI service VPC.

Subnets are a range of IP addresses within a VPC. We recommend keeping your resources inside a custom VPC whenever possible to ensure secure network protection of your infrastructure. An Amazon VPC is a virtual network dedicated to your AWS account. With an Amazon VPC, you can control the network access and internet connectivity of your SageMaker AI Studio and notebook instances.to instance resources to avoid unintentionally over provisioning permissions.

This rule is covered by the [sagemaker-notebook-instances-should-be-launched-in-a-custom-vpc](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/sagemaker/sagemaker-notebook-instances-should-be-launched-in-a-custom-vpc.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - sagemaker-notebook-instances-should-be-launched-in-a-custom-vpc.sentinel

      Description:
        This control checks if an Amazon SageMaker AI notebook instance is launched
        within a custom virtual private cloud (VPC).

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy sagemaker-notebook-instance-inside-vpc.

      ✓ Found 0 resource violations

      sagemaker-notebook-instances-should-be-launched-in-a-custom-vpc.sentinel:83:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - sagemaker-notebook-instances-should-be-launched-in-a-custom-vpc.sentinel

      Description:
        This control checks if an Amazon SageMaker AI notebook instance is launched
        within a custom virtual private cloud (VPC).

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy sagemaker-notebook-instance-inside-vpc.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_sagemaker_notebook_instance.compliant_notebook
          | ✗ failed
          | SageMaker notebook instances should be launched in a custom VPC. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/sagemaker-controls.html#sagemaker-2 for more details.


      sagemaker-notebook-instances-should-be-launched-in-a-custom-vpc.sentinel:83:1 - Rule "main"
        Value:
          false
```

---
