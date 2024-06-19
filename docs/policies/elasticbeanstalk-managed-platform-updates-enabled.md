#  Amazon Elastic Beanstalk environments should have managed platform updates enabled

| Provider            | Category                    |
|---------------------|-----------------------------|
| Amazon Web Services | Application monitoring      |

## Description

This control checks whether managed platform updates are enabled for an Elastic Beanstalk environment. The control fails if no managed platform updates are enabled.

This rule is covered by the [elasticbeanstalk-managed-platform-updates-enabled](../../policies/elasticbeanstalk-managed-platform-updates-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - elasticbeanstalk-managed-platform-updates-enabled.sentinel

    Description:
    This policy requires that the elasticbeanstalk environment have platform updates enabled

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy elasticbeanstalk-managed-platform-updates-enabled.

    ✓ Found 0 resource violations

    elasticbeanstalk-managed-platform-updates-enabled.sentinel:54:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - elasticbeanstalk-managed-platform-updates-enabled.sentinel

    Description:
    This policy requires that the elasticbeanstalk environment have platform updates enabled

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elasticbeanstalk-managed-platform-updates-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_elastic_beanstalk_environment.example
        | ✗ failed
        | Elastic Beanstalk environment does not have platform updates enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elasticbeanstalk-controls.html#elasticbeanstalk-2 for more details.


    elasticbeanstalk-managed-platform-updates-enabled.sentinel:54:1 - Rule "main"
    Value:
        false
```

---