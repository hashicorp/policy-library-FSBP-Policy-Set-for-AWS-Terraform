# AWS SageMaker notebook instances should run on supported platforms

| Provider            | Category                                     |
| ------------------- | -------------------------------------------- |
| Amazon Web Services | Vulnerability, patch, and version management |

## Description

This control checks whether an Amazon SageMaker AI notebook instance is configured to run on a supported platform, based on the platform identifier specified for the notebook instance. The control fails if the notebook instance is configured to run on a platform that's no longer supported.

If the platform for an Amazon SageMaker AI notebook instance is no longer supported, it might not receive security patches, bug fixes, or other types of updates. Notebook instances might continue to function, but they won't receive SageMaker AI security updates or critical bug fixes. You assume the risks associated with using an unsupported platform.

supportedPlatformIdentifierVersions: notebook-al2-v1, notebook-al2-v2, notebook-al2-v3 (not customizable)

This rule is covered by the [sagemaker-notebook-instances-should-run-on-supported-platforms](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/sagemaker/sagemaker-notebook-instances-should-run-on-supported-platforms.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - sagemaker-notebook-instances-should-run-on-supported-platforms.sentinel

        Description:
            This control checks whether an Amazon SageMaker AI notebook instance is
            configured to run on a supported platform, based on the platform identifier
            specified for the notebook instance.

        Print messages:


        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy sagemaker-notebook-instance-platform-version.

        ✓ Found 0 resource violations

        sagemaker-notebook-instances-should-run-on-supported-platforms.sentinel:46:1 - Rule "main"
            Value:
                true

```

---

## Policy Results (Fail)

```bash
trace:
        Fail - sagemaker-notebook-instances-should-run-on-supported-platforms.sentinel

        Description:
            This control checks whether an Amazon SageMaker AI notebook instance is
            configured to run on a supported platform, based on the platform identifier
            specified for the notebook instance.

        Print messages:

        notebook-al1-v1
        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy sagemaker-notebook-instance-platform-version.

        Found 1 resource violations

        → Module name: root
            ↳ Resource Address: aws_sagemaker_notebook_instance.example
                | ✗ failed
                | SageMaker notebook instances should run on supported platforms. The platform_identifier attribute must be set to one of the supported platform versions: notebook-al2-v1, notebook-al2-v2, or notebook-al2-v3. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/sagemaker-controls.html#sagemaker-8 for more details.


        sagemaker-notebook-instances-should-run-on-supported-platforms.sentinel:46:1 - Rule "main"
            Value:
                false
```

---
