# CodeBuild Bitbucket source repository URLs should not contain sensitive credentials

| Provider            | Category           |
|---------------------|--------------------|
| Amazon Web Services | Secure development |

## Description

This control checks whether an AWS CodeBuild project Bitbucket source repository URL contains personal access tokens or a user name and password. The control fails if the Bitbucket source repository URL contains personal access tokens or a user name and password.

Sign-in credentials shouldn't be stored or transmitted in clear text or appear in the source repository URL. Instead of personal access tokens or sign-in credentials, you should access your source provider in CodeBuild, and change your source repository URL to contain only the path to the Bitbucket repository location. Using personal access tokens or sign-in credentials could result in unintended data exposure or unauthorized access.

This rule is covered by the [codebuild-bitbucket-url-should-not-contain-sensitive-credentials](../../policies/codebuild/codebuild-bitbucket-url-should-not-contain-sensitive-credentials.sentinel) policy.

## Policy Results (Pass)
```bash
trace:
      Pass - codebuild-bitbucket-url-should-not-contain-sensitive-credentials.sentinel

      Description:
        This control checks whether an 'aws_codebuild_project' Bitbucket source
        repository URL contains personal access tokens or a user name and password.

      Print messages:

      → → Overall Result: true

      This result means that all resources have passed the policy check for the policy codebuild-bitbucket-url-should-not-contain-sensitive-credentials.

      ✓ Found 0 resource violations

      codebuild-bitbucket-url-should-not-contain-sensitive-credentials.sentinel:51:1 - Rule "main"
        Value:
          true
```

---

## Policy Results (Fail)
```bash
trace:
      Fail - codebuild-bitbucket-url-should-not-contain-sensitive-credentials.sentinel

      Description:
        This control checks whether an 'aws_codebuild_project' Bitbucket source
        repository URL contains personal access tokens or a user name and password.

      Print messages:

      → → Overall Result: false

      This result means that not all resources passed the policy check and the protected behavior is not allowed for the policy codebuild-bitbucket-url-should-not-contain-sensitive-credentials.

      Found 1 resource violations

      → Module name: root
        ↳ Resource Address: aws_codebuild_project.example
          | ✗ failed
          | 'aws_codebuild_project' Bitbucket source repository URL contains personal access tokens or a user name and password. Refer to https://docs.aws.amazon.com/securityhub/latest/userguide/codebuild-controls.html#codebuild-1 for more details.


      codebuild-bitbucket-url-should-not-contain-sensitive-credentials.sentinel:51:1 - Rule "main"
        Value:
          false
```

---