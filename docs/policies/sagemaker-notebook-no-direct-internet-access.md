# AWS Sagemaker Notebook instance should have the direct_internet_access set to "Disabled"

| Provider            | Category         |
| ------------------- | ---------------- |
| Amazon Web Services | Machine Learning |

## Description

This control checks whether direct internet access is disabled for an SageMaker notebook instance. The control fails if the DirectInternetAccess field is enabled for the notebook instance.

If you configure your SageMaker instance without a VPC, then by default direct internet access is enabled on your instance. You should configure your instance with a VPC and change the default setting to Disable—Access the internet through a VPC. To train or host models from a notebook, you need internet access.

This rule is covered by the [sagemaker-notebook-no-direct-internet-access](../../policies/sagemaker/sagemaker-notebook-no-direct-internet-access.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - sagemaker-notebook-no-direct-internet-access.sentinel

      Description:
        This policy checks if resources of type 'aws_sagemaker_notebook_instance' have
        the 'direct_internet_access'
        attribute set to "Disabled"

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy sagemaker-notebook-no-direct-internet-access.

      ✓ Found 0 resource violations

      sagemaker-notebook-no-direct-internet-access.sentinel:47:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - sagemaker-notebook-no-direct-internet-access.sentinel

      Description:
        This policy checks if resources of type 'aws_sagemaker_notebook_instance' have
        the 'direct_internet_access'
        attribute set to "Disabled"

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy sagemaker-notebook-no-direct-internet-access.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_sagemaker_notebook_instance.ni
          | ✗ failed
          | Attribute 'direct_internet_access' should be Disabled for AWS Sagemaker Notebook Instance. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/sagemaker-controls.html#sagemaker-1 for more details.


      sagemaker-notebook-no-direct-internet-access.sentinel:47:1 - Rule "main"
        Value:
          false
```

---
