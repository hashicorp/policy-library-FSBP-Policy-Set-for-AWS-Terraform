# AWS SageMaker app image configurations should be tagged

| Provider            | Category |
| ------------------- | -------- |
| Amazon Web Services | Tagging  |

## Description

This control checks whether an Amazon SageMaker AI app image configuration (AppImageConfig) has the tag keys specified by the requiredKeyTags parameter. The control fails if the app image configuration doesn't have any tag keys, or it doesn't have all the keys specified by the requiredKeyTags parameter. If you don't specify any values for the requiredKeyTags parameter, the control checks only for the existence of a tag key and fails if the app image configuration doesn't have any tag keys. The control ignores system tags, which are applied automatically and have the aws: prefix.

A tag is a label that you create and assign to an AWS resource. Each tag consists of a required tag key and an optional tag value. You can use tags to categorize resources by purpose, owner, environment, or other criteria. They can help you identify, organize, search for, and filter resources. They can also help you track resource owners for actions and notifications. You can also use tags to implement attribute-based access control (ABAC) as an authorization strategy.

This rule is covered by the [sagemaker-app-image-configurations-should-be-tagged](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/sagemaker/sagemaker-app-image-configurations-should-be-tagged.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - sagemaker-app-image-configurations-should-be-tagged.sentinel

        Description:
            This control checks whether an Amazon SageMaker AI app image configuration
            (AppImageConfig) has the tag keys specified by the requiredKeyTags parameter.

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy sagemaker-app-image-config-tagged.

        ✓ Found 0 resource violations

        sagemaker-app-image-configurations-should-be-tagged.sentinel:44:1 - Rule "main"
            Value:
                true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - sagemaker-app-image-configurations-should-be-tagged.sentinel

        Description:
            This control checks whether an Amazon SageMaker AI app image configuration
            (AppImageConfig) has the tag keys specified by the requiredKeyTags parameter.

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy sagemaker-app-image-config-tagged.

        Found 1 resource violations

        → Module name: root
            ↳ Resource Address: aws_sagemaker_app_image_config.compliant_config
                | ✗ failed
                | SageMaker app image configurations should be tagged. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/sagemaker-controls.html#sagemaker-6 for more details.


        sagemaker-app-image-configurations-should-be-tagged.sentinel:44:1 - Rule "main"
            Value:
                false
```

---
