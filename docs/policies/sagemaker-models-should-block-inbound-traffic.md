# AWS SageMaker models should block inbound traffic

| Provider            | Category                     |
| ------------------- | ---------------------------- |
| Amazon Web Services | Secure network configuration |

## Description

This control checks whether an Amazon SageMaker AI hosted model blocks inbound network traffic. The control fails if the EnableNetworkIsolation parameter for the hosted model is set to False.

SageMaker AI training and deployed inference containers are internet-enabled by default. If you don't want SageMaker AI to provide external network access to your training or inference containers, you can enable network isolation. If you enable network isolation, the containers can't make any outbound network calls, even to other AWS services. Additionally, no AWS credentials are made available to the container runtime environment. Enabling network isolation helps prevent unintended access to your SageMaker AI resources from the internet.

This rule is covered by the [sagemaker-models-should-block-inbound-traffic](../../policies/sagemaker/sagemaker-models-should-block-inbound-traffic.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - sagemaker-models-should-block-inbound-traffic.sentinel

        Description:
            This control checks whether an Amazon SageMaker AI hosted model blocks inbound
            network traffic.

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy sagemaker-models-should-block-inbound-traffic.

        ✓ Found 0 resource violations

        sagemaker-models-should-block-inbound-traffic.sentinel:44:1 - Rule "main"
            Value:
                true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - sagemaker-models-should-block-inbound-traffic.sentinel

        Description:
            This control checks whether an Amazon SageMaker AI hosted model blocks inbound
            network traffic.

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy sagemaker-models-should-block-inbound-traffic.

        Found 1 resource violations

        → Module name: root
            ↳ Resource Address: aws_sagemaker_model.compliant_model
                | ✗ failed
                | Attribute 'enable_network_isolation' must be set to true for 'aws_sagemaker_model' resources. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/sagemaker-controls.html#sagemaker-5 for more details.


        sagemaker-models-should-block-inbound-traffic.sentinel:44:1 - Rule "main"
            Value:
                false
```

---
