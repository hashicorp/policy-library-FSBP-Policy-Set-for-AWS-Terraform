# SNS topic access policies should not allow public access

| Provider            | Category                     |
| ------------------- | ---------------------------- |
| Amazon Web Services | Secure network configuration |

## Description

This control checks if the Amazon SNS topic access policy allows public access. This control fails if the SNS topic access policy allows public access.

You use an Amazon SNS access policy with a particular topic to restrict who can work with that topic (for example, who can publish messages to it or who can subscribe to it). SNS policies can grant access to other AWS accounts, or to users within your own AWS account. Providing a wildcard (\*) in the Principal field of the topic policy and a lack of conditions to limit the topic policy can result in data exfiltration, denial of service, or undesired injection of messages into your service by an attacker.

This rule is covered by the [sns-topic-access-policies-should-not-allow-public-access](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/sns/sns-topic-access-policies-should-not-allow-public-access.sentinel) policy.

## Policy Results (Pass)

```bash
trace:
        Pass - sns-topic-access-policies-should-not-allow-public-access.sentinel

        Description:
            This control checks if the Amazon SNS topic access policy allows public
            access.

        Print messages:

        → → Overall Result: true

        This result means that all resources have passed the policy check for the policy sns-topic-access-policies-should-not-allow-public-access.

        ✓ Found 0 resource violations

        sns-topic-access-policies-should-not-allow-public-access.sentinel:104:1 - Rule "main"
            Value:
                true
```

---

## Policy Results (Fail)

```bash
trace:
        Fail - sns-topic-access-policies-should-not-allow-public-access.sentinel

        Description:
            This control checks if the Amazon SNS topic access policy allows public
            access.

        Print messages:

        → → Overall Result: false

        This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy sns-topic-access-policies-should-not-allow-public-access.

        Found 1 resource violations

        → Module name: root
            ↳ Resource Address: aws_sns_topic_policy.compliant_topic_policy
                | ✗ failed
                | SNS topic access policies should not allow public access. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/sns-controls.html#sns-4 for more details.


        sns-topic-access-policies-should-not-allow-public-access.sentinel:104:1 - Rule "main"
            Value:
                false
```

---
