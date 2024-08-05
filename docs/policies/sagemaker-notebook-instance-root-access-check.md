# AWS Sagemaker Notebook instance should have the root_access set to "Disabled"

| Provider            | Category         |
| ------------------- | ---------------- |
| Amazon Web Services | Machine Learning |

## Description

This control checks whether root access is turned on for an Amazon SageMaker notebook instance. The control fails if root access is turned on for a SageMaker notebook instance.

In adherence to the principal of least privilege, it is a recommended security best practice to restrict root access to instance resources to avoid unintentionally over provisioning permissions.

This rule is covered by the [sagemaker-notebook-instance-root-access-check](../../policies/sagemaker-notebook-instance-root-access-check.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
      Pass - sagemaker-notebook-instance-root-access-check.sentinel

      Description:
        This policy checks if resources of type 'aws_sagemaker_notebook_instance' have
        the 'root_access'
        attribute set to "Disabled"

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy sagemaker-notebook-instance-root-access-check.

      ✓ Found 0 resource violations

      sagemaker-notebook-instance-root-access-check.sentinel:49:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)

```bash
trace:
      Fail - sagemaker-notebook-instance-root-access-check.sentinel

      Description:
        This policy checks if resources of type 'aws_sagemaker_notebook_instance' have
        the 'root_access'
        attribute set to "Disabled"

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy sagemaker-notebook-instance-root-access-check.

      Found 1 resource violations

      → Module name: module.sagemaker-notebook-instance
        ↳ Resource Address: module.sagemaker-notebook-instance.aws_sagemaker_notebook_instance.simple_notebook_instance
          | ✗ failed
          | Attribute 'root_access' should be Disabled for AWS Sagemaker Notebook Instance. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/sagemaker-controls.html#sagemaker-3 for more details.


      sagemaker-notebook-instance-root-access-check.sentinel:49:1 - Rule "main"
        Value:
          false
```

---
