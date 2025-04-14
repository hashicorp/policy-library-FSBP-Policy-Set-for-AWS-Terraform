# CodeBuild project environments should have a logging AWS Configuration

| Provider            | Category  |
|---------------------|-----------|
| Amazon Web Services | Logging   |

## Description

This control checks whether a CodeBuild project environment has at least one log option, either to S3 or CloudWatch logs enabled. This control fails if a CodeBuild project environment does not have at least one log option enabled.

From a security perspective, logging is an important feature to enable for future forensics efforts in the case of any security incidents. Correlating anomalies in CodeBuild projects with threat detections can increase confidence in the accuracy of those threat detections.

This rule is covered by the [codebuild-project-environments-should-have-a-logging-aws-configuration](../../policies/codebuild/codebuild-project-environments-should-have-a-logging-aws-configuration.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - codebuild-project-environments-should-have-a-logging-aws-configuration.sentinel

      Description:
        This control checks whether a 'aws_codebuild_project' has at least one log
        option, either to S3 or CloudWatch logs enabled.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy codebuild-project-environments-should-have-a-logging-aws-configuration.

      ✓ Found 0 resource violations

      codebuild-project-environments-should-have-a-logging-aws-configuration.sentinel:63:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - codebuild-project-environments-should-have-a-logging-aws-configuration.sentinel

      Description:
        This control checks whether a 'aws_codebuild_project' has at least one log
        option, either to S3 or CloudWatch logs enabled.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy codebuild-project-environments-should-have-a-logging-aws-configuration.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_codebuild_project.example
          | ✗ failed
          | 'aws_codebuild_project' should have at least one log option, either to S3 or CloudWatch logs enabled. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/codebuild-controls.html#codebuild-4 for more details.


      codebuild-project-environments-should-have-a-logging-aws-configuration.sentinel:63:1 - Rule "main"
        Value:
          false
```

---