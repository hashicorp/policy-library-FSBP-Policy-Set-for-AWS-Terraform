#  Amazon Elastic Beanstalk environments should have enhanced health reporting enabled

| Provider            | Category                    |
|---------------------|-----------------------------|
| Amazon Web Services | Application monitoring      |

## Description

This control checks whether enhanced health reporting is enabled for your AWS Elastic Beanstalk environments.

This rule is covered by the [elasticbeanstalk-enhanced-health-reporting-enabled](../../policies/elasticbeanstalk/elasticbeanstalk-enhanced-health-reporting-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - elasticbeanstalk-enhanced-health-reporting-enabled.sentinel

    Description:
    This policy requires that the elasticbeanstalk environment have enhanced
    health reporting enabled

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy elasticbeanstalk-enhanced-health-reporting-enabled.

    ✓ Found 0 resource violations

    elasticbeanstalk-enhanced-health-reporting-enabled.sentinel:49:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - elasticbeanstalk-enhanced-health-reporting-enabled.sentinel

    Description:
    This policy requires that the elasticbeanstalk environment have enhanced
    health reporting enabled

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elasticbeanstalk-enhanced-health-reporting-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_elastic_beanstalk_environment.example
        | ✗ failed
        | Elastic Beanstalk environment does not have enhanced health reporting enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elasticbeanstalk-controls.html#elasticbeanstalk-1 for more details.


    elasticbeanstalk-enhanced-health-reporting-enabled.sentinel:49:1 - Rule "main"
    Value:
        false
```

---