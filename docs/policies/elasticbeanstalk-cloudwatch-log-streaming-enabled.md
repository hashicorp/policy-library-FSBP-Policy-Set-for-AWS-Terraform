#  Amazon Elastic Beanstalk environments should have cloudwatch log streaming enabled

| Provider            | Category                    |
|---------------------|-----------------------------|
| Amazon Web Services | Application monitoring      |

## Description

This control checks whether an Elastic Beanstalk environment is configured to send logs to CloudWatch Logs. The control fails if an Elastic Beanstalk environment isn't configured to send logs to CloudWatch Logs.

This rule is covered by the [elasticbeanstalk-cloudwatch-log-streaming-enabled](../../policies/elasticbeanstalk-cloudwatch-log-streaming-enabled.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
    Pass - elasticbeanstalk-cloudwatch-log-streaming-enabled.sentinel

    Description:
    This policy requires that the elasticbeanstalk environment have cloudwatch log
    streaming enabled

    Print messages:

    → → Overall Result: true

    This result means that all resources have passed the policy check for the policy elasticbeanstalk-cloudwatch-log-streaming-enabled.

    ✓ Found 0 resource violations

    elasticbeanstalk-cloudwatch-log-streaming-enabled.sentinel:48:1 - Rule "main"
    Value:
        true
```

---

## Policy Results (Fail)
```bash
trace:
    Fail - elasticbeanstalk-cloudwatch-log-streaming-enabled.sentinel

    Description:
    This policy requires that the elasticbeanstalk environment have cloudwatch log
    streaming enabled

    Print messages:

    → → Overall Result: false

    This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy elasticbeanstalk-cloudwatch-log-streaming-enabled.

    Found 1 resource violations

    → Module name: root
    ↳ Resource Address: aws_elastic_beanstalk_environment.example
        | ✗ failed
        | Elastic Beanstalk environment does not have cloudwatch log streaming enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/elasticbeanstalk-controls.html#elasticbeanstalk-3 for more details.


    elasticbeanstalk-cloudwatch-log-streaming-enabled.sentinel:48:1 - Rule "main"
    Value:
        false
```

---