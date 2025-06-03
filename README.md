# Pre-written Sentinel Policies for AWS FSBP Foundations Benchmarking

Pre-written Sentinel policies are ready to use compliance checks for FSBP AWS Foundations Benchmarking to help enable your AWS resources meet industry security standards.

At HashiCorp, we’re committed to making policy management easier for our customers. We understand that developing policies from scratch can be time-consuming and resource-intensive. To address this, we’re introducing our Prewritten Policy Libraries—expertly crafted, ready-to-use policies designed to streamline your compliance processes and enhance security across your infrastructure.

This repository contains several policies designed to accelerate the adoption of the FSBP AWS Foundations Benchmark within HCP Terraform. These policies can be utilized to enforce best practices and security standards across your AWS environment.

For more details on how to work with these policies and to understand the Sentinel language and framework, please refer to the [Sentinel documentation](https://developer.hashicorp.com/sentinel/) or the README documentation included with each of the policy [libraries](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies).

## Feedback

We aim to validate the effectiveness of our policies by collecting diverse user feedback and understanding real-world use cases. This input will help refine our policies and enhance their overall impact.

1. You can submit your feedback via a [public survey](https://docs.google.com/forms/d/e/1FAIpQLScswwLMaVaRuYRGJzDjNiycwM4BUa_gAIsAE_zOPdgyFeLXCA/viewform).

2. If you have any issues or enhancement suggestions to the library, please create [a new GitHub issue](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/issues/new).

3. Alternatively, we welcome any contributions that improve the impact of this library! To learn more about contributing and suggesting changes to this library, refer to the [contributing guide](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/CONTRIBUTING.md).

## Getting Started

This getting started guide assumes that:

1. You are familiar with core workflows in HCP Terraform and Terraform Enterprise, and you have an existing workspace configured with AWS access credentials.

   > **Tip:** If you do not have these prerequisites, please refer to the [Use VCS-Driven Workflow](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-vcs-change) and [Create a Variable Set](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-create-variable-set) tutorials for guidance.

2. You have a user account that is part of the ["owners"](https://developer.hashicorp.com/terraform/cloud-docs/users-teams-organizations/permissions#organization-owners) team or have ["Manage Policies"](https://developer.hashicorp.com/terraform/cloud-docs/users-teams-organizations/permissions#manage-policies) organization-level permissions to create new policy sets and policies.

3. Ensure you are using HCP Terraform or Terraform Enterprise [v202312-1](https://developer.hashicorp.com/terraform/enterprise/releases/2023/v202312-1) or a later version.

4. You are using Sentinel version 0.26.x and later version.

By default, the module will enable all policies within the library, and they will be enforced by the HCP Platform with the `enforcement_level` set to `advisory` only.

**Example:**

```
policy "iam-password-expiry" {
  source = "./policies/iam/iam-password-expiry.sentinel"
  enforcement_level = "advisory"
  params = {
    password_expiry_days = 90
  }
}
```

If you want to enable only a subset of the policies or change the [enforcement levels](https://developer.hashicorp.com/sentinel/docs/concepts/enforcement-levels) to either `soft-mandatory` or `hard-mandatory`, we recommend updating the contents of the `sentinel.hcl` file in each library before applying the Terraform configuration.

> **Important:**
> The policies in each library are opinionated and depend on several Sentinel modules. To learn more about modules, please refer to the [Sentinel module](https://developer.hashicorp.com/sentinel/docs/extending/modules) documentation.
>
> To learn more about how to configure a policy set as a [policy evaluation](https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement/manage-policy-sets#policy-evaluations), please review the Terraform Enterprise provider [documentation](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/policy_set#agent_enabled).

## Consuming Pre-Written Sentinel Policies for FSBP AWS Foundations Benchmark

Following methods outlines various ways to consume and implement pre-written Sentinel policies for the FSBP AWS Foundations Benchmark. These policies can be used in both Terraform Enterprise (TFE) and Terraform Cloud (TFC) environments. Below are the recommended methods for integrating these policies into your workflows.

### Terraform Registry Method:

- Navigate to the [Terraform Registry](https://registry.terraform.io/browse/policies) and select the desired Sentinel policy.
- Copy the provided policy snippet from the registry.
- Create a GitHub repository (or use an existing one) to store your policies.
- Add a Sentinel.hcl file to the repository and paste the copied policy snippet(s) into this file.
- Connect the repository to Terraform Cloud or Terraform Enterprise using the VCS (Version Control System) workflow.
- Trigger policy execution automatically during the plan stage in Terraform Cloud or Terraform Enterprise.

### Using the Public GitHub Repository:

- Access the public GitHub repository containing the policy library.
- You can directly use the repository as-is or fork it to customize the policies for your specific requirements.
- If forking, ensure you sync your fork with the upstream repository periodically to stay updated with the latest changes.
- Avoid using the default branch for consumption in Terraform Cloud or Terraform Enterprise. Instead, use the release branches for better stability.
- Attach the repository (or your fork) to Terraform Cloud or Terraform Enterprise using the VCS workflow.
- Run a Terraform plan to execute the policies during the post-plan stage.

### Terraform Module Approach:

- Use a dedicated Terraform module designed to manage Sentinel policy sets.
- Provide a minimal set of variable inputs (typically four) to configure and attach the policies.
- The module will automatically attach the latest versions of multiple policy sets to their respective workspaces.
- Execute a Terraform plan to verify that the policy sets are applied successfully in Terraform Cloud or Terraform Enterprise.

#### Notes and Best Practices

- These policies are compatible with both Terraform Cloud (TFC) and Terraform Enterprise (TFE). Ensure your workflow is configured accordingly.
- When using the public GitHub repository, it is recommended to use release branches for stability and avoid consuming policies directly from the default branch.
- Regularly update your policies to align with the latest FSBP AWS Foundations Benchmark standards and Terraform best practices.
- Customize policies as needed to meet your organization's specific compliance and security requirements.

## Resources

- [Get Started - HCP Terraform](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started)
- [Connecting VCS Providers to HCP Terraform](https://developer.hashicorp.com/terraform/cloud-docs/vcs)
- [Policy Enforcement](https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement)
- [Managing Policy Sets](https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement/manage-policy-sets)
- [Introduction to Sentinel](https://developer.hashicorp.com/sentinel/intro/what)
- [Sentinel Documentation](https://developer.hashicorp.com/sentinel/docs)
- [Sentinel Language](https://developer.hashicorp.com/sentinel/docs/language/)
- [Sentinel Language Specification](https://developer.hashicorp.com/sentinel/docs/language/spec)
- [Policy Libraries](https://registry.terraform.io/browse/policies)

### Policies Included

- AWS Private CA root certificate authority should be disabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/acm-pca-root-ca-disabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/acm/acm-pca-root-ca-disabled.sentinel))

- RSA certificates managed by ACM should use a key length of at least 2,048 bits ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/acm-rsa-certificate-key-length-atleast-2048.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/acm/acm-rsa-certificate-key-length-atleast-2048.sentinel))

- Access logging should be configured for API Gateway V2 Stages ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/api-gateway-access-logging-should-be-configured.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/api-gateway/api-gateway-access-logging-should-be-configured.sentinel))

- API Gateway REST and WebSocket API execution logging should be enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/api-gateway-rest-and-websocket-api-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/api-gateway/api-gateway-rest-and-websocket-api-logging-enabled.sentinel))

- API Gateway REST API cache data should be encrypted at rest ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/api-gateway-rest-cache-have-encryption-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/api-gateway/api-gateway-rest-cache-have-encryption-enabled.sentinel))

- API Gateway REST API stages should be configured to use SSL certificates for backend authentication ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/api-gateway-rest-configure-ssl-certificates.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/api-gateway/api-gateway-rest-configure-ssl-certificates.sentinel))

- API Gateway REST API stages should have AWS X-Ray tracing enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/api-gateway-rest-have-x-ray-tracing-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/api-gateway/api-gateway-rest-have-x-ray-tracing-enabled.sentinel))

- API Gateway routes should specify an authorization type ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/api-gateway-routes-should-specify-an-authorization-type.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/api-gateway/api-gateway-routes-should-specify-an-authorization-type.sentinel))

- API Gateway should be associated with a WAF Web ACL ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/api-gateway-should-be-associated-with-a-waf-web-acl.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/api-gateway/api-gateway-should-be-associated-with-a-waf-web-acl.sentinel))

- Amazon EC2 Auto Scaling group should cover multiple Availability Zones ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/autoscaling-group-should-cover-multiple-azs.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/autoscaling-group/autoscaling-group-should-cover-multiple-azs.sentinel))

- Amazon EC2 Auto Scaling groups should use Amazon EC2 launch templates ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/autoscaling-group-should-use-launch-templates.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/autoscaling-group/autoscaling-group-should-use-launch-templates.sentinel))

- Auto Scaling groups should use multiple instance types in multiple Availability Zones ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/autoscaling-group-should-use-multiple-instance-types.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/autoscaling-group/autoscaling-group-should-use-multiple-instance-types.sentinel))

- Auto Scaling groups associated with a load balancer should use ELB health checks ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/autoscaling-group-with-load-balancer-attached-should-have-elb-healthcheck.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/autoscaling-group/autoscaling-group-with-load-balancer-attached-should-have-elb-healthcheck.sentinel))

- Amazon EC2 instances launched using Auto Scaling group launch configurations should not have Public IP addresses ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/autoscaling-launch-config-public-ip-disabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/autoscaling-group/autoscaling-launch-config-public-ip-disabled.sentinel))

- AWS Backup Framework Recovery Point should be encrypted at rest ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/backup-recovery-point-encrypted.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/backup/backup-recovery-point-encrypted.sentinel))

- CloudFront distributions should have WAF enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/cloudfront-associated-with-waf.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudfront/cloudfront-associated-with-waf.sentinel))

- CloudFront distributions should encrypt traffic to custom origins ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/cloudfront-distributions-should-encrypt-traffic-to-custom-origins.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudfront/cloudfront-distributions-should-encrypt-traffic-to-custom-origins.sentinel))

- CloudFront distributions should have logging enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/cloudfront-distributions-should-have-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudfront/cloudfront-distributions-should-have-logging-enabled.sentinel))

- CloudFront distributions should have origin failover configured ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/cloudfront-distributions-should-have-origin-failover-configured.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudfront/cloudfront-distributions-should-have-origin-failover-configured.sentinel))

- CloudFront distributions should not use deprecated SSL protocols between edge locations and custom origins ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/cloudfront-distributions-should-not-use-deprecated-ssl-protocols.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudfront/cloudfront-distributions-should-not-use-deprecated-ssl-protocols.sentinel))

- CloudFront distributions should use custom SSL/TLS certificates ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/cloudfront-distributions-should-use-custom-ssl-tsl-certificates.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudfront/cloudfront-distributions-should-use-custom-ssl-tsl-certificates.sentinel))

- CloudFront distributions should use SNI to serve HTTPS requests ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/cloudfront-distributions-should-use-sni-to-serve-https-requests.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudfront/cloudfront-distributions-should-use-sni-to-serve-https-requests.sentinel))

- CloudFront distributions should use origin access control ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/cloudfront-s3-origin-access-control-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudfront/cloudfront-s3-origin-access-control-enabled.sentinel))

- CloudFront distributions should not point to non-existent S3 origins ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/cloudfront-s3-origin-non-existent-bucket.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudfront/cloudfront-s3-origin-non-existent-bucket.sentinel))

- CloudFront distributions should have a default root object configured ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/cloudfront-should-have-default-root-object-configured.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudfront/cloudfront-should-have-default-root-object-configured.sentinel))

- CloudFront distributions should require encryption in transit ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/cloudfront-should-require-encryption-in-transit.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/cloudfront/cloudfront-should-require-encryption-in-transit.sentinel))

- CodeBuild Bitbucket source repository URLs should not contain sensitive credentials ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/codebuild-bitbucket-url-should-not-contain-sensitive-credentials.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/codebuild/codebuild-bitbucket-url-should-not-contain-sensitive-credentials.sentinel))

- CodeBuild project environments should have a logging AWS Configuration ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/codebuild-project-environments-should-have-a-logging-aws-configuration.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/codebuild/codebuild-project-environments-should-have-a-logging-aws-configuration.sentinel))

- CodeBuild S3 logs should be encrypted ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/codebuild-s3-logs-should-be-encrypted.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/codebuild/codebuild-s3-logs-should-be-encrypted.sentinel))

- AWS DMS Replication Instances should have the auto_minor_version_upgrade attribute set to true ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/dms-auto-minor-version-upgrade-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/dms/dms-auto-minor-version-upgrade-check.sentinel))

- AWS DMS Endpoint resource should have the certificate for ssl configured ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/dms-endpoint-should-be-ssl-configured.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/dms/dms-endpoint-should-be-ssl-configured.sentinel))

- DMS endpoints should use SSL ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/dms-endpoints-should-use-ssl.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/dms/dms-endpoints-should-use-ssl.sentinel))

- AWS DMS Endpoint resource should have the 'auth_mechanism' attribute not 'default' in 'mongodb_settings' for engine of type mongodb ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/dms-mongo-db-authentication-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/dms/dms-mongo-db-authentication-enabled.sentinel))

- AWS DMS Endpoint resource should have the 'ssl_security_protocol' attribute is 'ssl-encryption' in 'redis_settings' for engine of type redis ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/dms-redis-tls-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/dms/dms-redis-tls-enabled.sentinel))

- AWS DMS Replication Instances should have the publicly_accessible attribute set to false ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/dms-replication-instances-should-not-be-public.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/dms/dms-replication-instances-should-not-be-public.sentinel))

- AWS DMS Replication Task should have Logging enabled for the attrinute 'replication_task_settings' for source db ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/dms-repliction-task-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/dms/dms-repliction-task-logging-enabled.sentinel))

- AWS DMS Replication Task should have Logging enabled for the attrinute 'replication_task_settings' for target db ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/dms-repliction-task-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/dms/dms-repliction-task-logging-enabled.sentinel))

- AWS DocumentDB clusters should have enabled_cloudwatch_logs_exports attribute set to 'audit' ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/docdb-cluster-audit-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/docdb/docdb-cluster-audit-logging-enabled.sentinel))

- AWS DocumentDB clusters should have backup_retention_period set between '7 to 35' ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/docdb-cluster-backup-retention-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/docdb/docdb-cluster-backup-retention-check.sentinel))

- AWS DocumentDB clusters should have deletion protection enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/docdb-cluster-deletion-protection-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/docdb/docdb-cluster-deletion-protection-enabled.sentinel))

- AWS DocumentDB clusters should be encrypted at rest ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/docdb-cluster-storage-encrypted.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/docdb/docdb-cluster-storage-encrypted.sentinel))

- Amazon Dynamo DB accelerator clusters should have encryption at rest enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/dynamo-db-accelerator-clusters-encryption-at-rest-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/dynamo-db/dynamo-db-accelerator-clusters-encryption-at-rest-enabled.sentinel))

- Amazon Dynamo DB tables should have delete protection enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/dynamo-db-tables-delete-protection-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/dynamo-db/dynamo-db-tables-delete-protection-enabled.sentinel))

- Amazon Dynamo DB tables should have point in time recovery enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/dynamo-db-tables-point-in-time-recovery-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/dynamo-db/dynamo-db-tables-point-in-time-recovery-enabled.sentinel))

- Amazon Dynamo DB tables should scale its read and write capacity as needed ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/dynamo-db-tables-scales-capacity-with-demand.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/dynamo-db/dynamo-db-tables-scales-capacity-with-demand.sentinel))

- Attached Amazon EBS volumes should be encrypted at-rest ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-attached-ebs-volumes-encrypted-at-rest.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-attached-ebs-volumes-encrypted-at-rest.sentinel))

- AWS EC2 Client VPN endpoints should have client connection logging enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-client-vpn-connection-log-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-client-vpn-connection-log-enabled.sentinel))

- EC2 - AWS EBS volume are encrypted ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-ebs-encryption-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-ebs-encryption-enabled.sentinel))

- Amazon EBS snapshots should not be publicly restorable ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-ebs-snapshot-public-restorable-check-account-level.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-ebs-snapshot-public-restorable-check-account-level.sentinel))

- Amazon EC2 instances should not have a public IPv4 address ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-instance-should-not-have-public-ip.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-instance-should-not-have-public-ip.sentinel))

- Amazon EC2 instances should not use multiple ENIs ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-instance-should-not-use-multiple-enis.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-instance-should-not-use-multiple-enis.sentinel))

- Amazon EC2 paravirtual instance types should not be used ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-instance-virtualization-should-not-be-paravirtual.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-instance-virtualization-should-not-be-paravirtual.sentinel))

- EC2 launch templates should use Instance Metadata Service Version 2 (IMDSv2) ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-launch-template-imdsv2-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-launch-template-imdsv2-check.sentinel))

- Amazon EC2 launch templates should not assign public IPs to network interfaces ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-launch-template-public-ip-disabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-launch-template-public-ip-disabled.sentinel))

- EC2 - Ensure Metadata Service only allows IMDSv2 ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-metadata-imdsv2-required.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-metadata-imdsv2-required.sentinel))

- EC2 - Network Acls should not allow ingress traffic from 0.0.0.0/0 or ::/0 to ports 22 or 3389 ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-network-acl.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-network-acl.sentinel))

- Unused Network Access Control Lists should be removed ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-network-acl-should-have-subnet-ids.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-network-acl-should-have-subnet-ids.sentinel))

- AWS Security Group should not allow ingress traffic from 0.0.0.0/0 or ::/0 to common ports ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-security-group-ingress-traffic-restriction-to-common-ports.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-security-group-ingress-traffic-restriction-to-common-ports.sentinel))

- Security groups should only allow unrestricted incoming traffic for authorized ports ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-security-group-ingress-traffic-restriction-to-unauthorized-ports.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-security-group-ingress-traffic-restriction-to-unauthorized-ports.sentinel))

- Amazon EC2 should be configured to use VPC endpoints that are created for the Amazon EC2 service ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-service-vpc-endpoint-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-service-vpc-endpoint-enabled.sentinel))

- Amazon EC2 subnets should not automatically assign public IP addresses ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-subnet-with-auto-assign-public-ip-disabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-subnet-with-auto-assign-public-ip-disabled.sentinel))

- Amazon EC2 Transit Gateways should not automatically accept VPC attachment requests ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-transit-gateway-auto-vpc-attach-disabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-transit-gateway-auto-vpc-attach-disabled.sentinel))

- EC2 VPC Default Security Group No Traffic ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-vpc-default-security-group-no-traffic.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-vpc-default-security-group-no-traffic.sentinel))

- EC2 VPC Flow Logging Enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-vpc-flow-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-vpc-flow-logging-enabled.sentinel))

- AWS Site-to-Site VPN Connection should have AWS CLoudwatch Logs enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ec2-vpn-connection-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ec2/ec2-vpn-connection-logging-enabled.sentinel))

- ECR private repositories should have image scanning configured ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ecr-image-scanning-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ecr/ecr-image-scanning-enabled.sentinel))

- ECR repositories should have at least one lifecycle policy configured ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ecr-lifecycle-policy-configured.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ecr/ecr-lifecycle-policy-configured.sentinel))

- ECR private repositories should have tag immutability configured ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ecr-tag-immutability-configured.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ecr/ecr-tag-immutability-configured.sentinel))

- ECS clusters should use Container Insights ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ecs-cluster-enable-container-insights.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ecs/ecs-cluster-enable-container-insights.sentinel))

- ECS Fargate services should run on the latest Fargate platform version ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ecs-fargate-service-platform-compatibility.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ecs/ecs-fargate-service-platform-compatibility.sentinel))

- ECS containers should run as non-privileged ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ecs-non-privileged-container-definitions.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ecs/ecs-non-privileged-container-definitions.sentinel))

- ECS services should not have public IP addresses assigned to them automatically ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ecs-service-no-public-ip-assignment.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ecs/ecs-service-no-public-ip-assignment.sentinel))

- ECS task definitions should have a logging configuration ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ecs-task-definition-log-configuration-present.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ecs/ecs-task-definition-log-configuration-present.sentinel))

- Secrets should not be passed as container environment variables ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ecs-task-definition-no-secrets-as-environment-variables.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ecs/ecs-task-definition-no-secrets-as-environment-variables.sentinel))

- ECS containers should be limited to read-only access to root filesystems ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ecs-task-definition-read-only-root-file-system-access.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ecs/ecs-task-definition-read-only-root-file-system-access.sentinel))

- ECS task definitions should not share the host's process namespace ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ecs-task-definition-restrict-process-id.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ecs/ecs-task-definition-restrict-process-id.sentinel))

- Amazon ECS task definitions should have secure networking modes and user definitions ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ecs-task-definition-secure-networking-mode-and-user-definitions.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ecs/ecs-task-definition-secure-networking-mode-and-user-definitions.sentinel))

- EKS clusters should have audit logging enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/eks-cluster-audit-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/eks/eks-cluster-audit-logging-enabled.sentinel))

- EKS clusters should use encrypted Kubernetes secrets ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/eks-cluster-encrypted-kubernetes-secrets.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/eks/eks-cluster-encrypted-kubernetes-secrets.sentinel))

- EKS cluster endpoints should not be publicly accessible ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/eks-cluster-endpoints-restrict-public-access.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/eks/eks-cluster-endpoints-restrict-public-access.sentinel))

- EKS clusters should run on a supported Kubernetes version ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/eks-cluster-supported-k8s-version-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/eks/eks-cluster-supported-k8s-version-check.sentinel))

- Amazon ElastiCache for Redis cluster should have automatic backups scheduled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticache-redis-cluster-auto-backup-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticache/elasticache-redis-cluster-auto-backup-enabled.sentinel))

- Amazon ElastiCache for Redis cluster should have automatic minor version upgrades enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticache-redis-cluster-auto-minor-version-upgrade-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticache/elasticache-redis-cluster-auto-minor-version-upgrade-enabled.sentinel))

- Amazon ElastiCache for Redis cluster should not use the default subnet group ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticache-redis-cluster-non-default-subnet-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticache/elasticache-redis-cluster-non-default-subnet-enabled.sentinel))

- Amazon ElastiCache for Redis replication-group should have automatic failovers enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticache-redis-replication-group-auto-failover-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticache/elasticache-redis-replication-group-auto-failover-enabled.sentinel))

- Amazon ElastiCache for Redis replication groups should have encryption at rest enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticache-redis-replication-group-encryption-at-rest-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticache/elasticache-redis-replication-group-encryption-at-rest-enabled.sentinel))

- Amazon ElastiCache for Redis replication groups should have encryption at transit enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticache-redis-replication-group-encryption-at-transit-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticache/elasticache-redis-replication-group-encryption-at-transit-enabled.sentinel))

- Amazon ElastiCache for Redis replication groups should have auth token set when redis version is belxow 6.0 ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticache-redis-replication-group-redis-auth-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticache/elasticache-redis-replication-group-redis-auth-enabled.sentinel))

- Amazon Elastic Beanstalk environments should have cloudwatch log streaming enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticbeanstalk-cloudwatch-log-streaming-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticbeanstalk/elasticbeanstalk-cloudwatch-log-streaming-enabled.sentinel))

- Amazon Elastic Beanstalk environments should have enhanced health reporting enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticbeanstalk-enhanced-health-reporting-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticbeanstalk/elasticbeanstalk-enhanced-health-reporting-enabled.sentinel))

- Amazon Elastic Beanstalk environments should have managed platform updates enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticbeanstalk-managed-platform-updates-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticbeanstalk/elasticbeanstalk-managed-platform-updates-enabled.sentinel))

- Elasticsearch domains should have audit logging enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticsearch-audit-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticsearch/elasticsearch-audit-logging-enabled.sentinel))

- Elasticsearch domains should have at least three data nodes ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticsearch-domains-should-have-atleast-three-data-nodes.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticsearch/elasticsearch-domains-should-have-atleast-three-data-nodes.sentinel))

- AWS Elasticsearch domain should be encrypted at rest ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticsearch-encrypted-at-rest.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticsearch/elasticsearch-encrypted-at-rest.sentinel))

- Connections to Elasticsearch domains should be encrypted using the latest TLS security policy ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticsearch-https-required.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticsearch/elasticsearch-https-required.sentinel))

- AWS Elasticsearch domain should not be publicly accessible ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticsearch-in-vpc-only.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticsearch/elasticsearch-in-vpc-only.sentinel))

- Elasticsearch domain error logging to CloudWatch Logs should be enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticsearch-logs-to-cloudwatch.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticsearch/elasticsearch-logs-to-cloudwatch.sentinel))

- AWS Elasticsearch domain should be encrypt data between nodes ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticsearch-node-to-node-encryption-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticsearch/elasticsearch-node-to-node-encryption-check.sentinel))

- Elasticsearch domains should be configured with at least three dedicated master nodes ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elasticsearch-primary-node-fault-tolerance.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elasticsearch/elasticsearch-primary-node-fault-tolerance.sentinel))

- Classic Load Balancer listeners should be configured with HTTPS or TLS termination ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elb-configure-https-tls-termination-classic-load-balancer.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elb/elb-configure-https-tls-termination-classic-load-balancer.sentinel))

- Classic Load Balancers should have connection draining enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elb-connection-draining-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elb/elb-connection-draining-enabled.sentinel))

- Classic Load Balancers should have cross-zone load balancing enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elb-cross-zone-load-balancing-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elb/elb-cross-zone-load-balancing-enabled.sentinel))

- Application Load Balancer should be configured to drop http headers ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elb-drop-invalid-http-headers.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elb/elb-drop-invalid-http-headers.sentinel))

- Application and Classic Load Balancers logging should be enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elb-ensure-access-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elb/elb-ensure-access-logging-enabled.sentinel))

- Application, Gateway, and Network Load Balancers should have deletion protection enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elb-ensure-deletion-protection-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elb/elb-ensure-deletion-protection-enabled.sentinel))

- Application Load Balancer should be configured to redirect all HTTP requests to HTTPS ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elb-ensure-http-request-redirection.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elb/elb-ensure-http-request-redirection.sentinel))

- Classic Load Balancer should span multiple Availability Zones ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elb-ensure-multi-az-configuration-classic-load-balancer.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elb/elb-ensure-multi-az-configuration-classic-load-balancer.sentinel))

- Classic Load Balancers with SSL/HTTPS listeners should use a certificate provided by AWS Certificate Manager ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elb-ensure-ssl-listener-acm-cert-classic-load-balancer.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elb/elb-ensure-ssl-listener-acm-cert-classic-load-balancer.sentinel))

- Classic Load Balancers with SSL listeners should use a predefined security policy that has strong AWS Configuration ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elb-ensure-ssl-listener-predefined-security-policy.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elb/elb-ensure-ssl-listener-predefined-security-policy.sentinel))

- Application Load Balancer should be configured with defensive or strictest desync mitigation mode ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elb-ensure-valid-desync-mitigation-mode.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elb/elb-ensure-valid-desync-mitigation-mode.sentinel))

- Classic Load Balancer should be configured with defensive or strictest desync mitigation mode ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/elb-ensure-valid-desync-mitigation-mode.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/elb/elb-ensure-valid-desync-mitigation-mode.sentinel))

- Amazon EMR block public access setting should be enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/emr-block-public-access-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/emr/emr-block-public-access-enabled.sentinel))

- EventBridge custom event buses should have a resource-based policy attached ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/eventbridge-custom-event-bus-should-have-attached-policy.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/eventbridge/eventbridge-custom-event-bus-should-have-attached-policy.sentinel))

- FSx for Lustre file systems should be configured to copy tags to backups ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/fsx-lustre-copy-tags-to-backups.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/fsx/fsx-lustre-copy-tags-to-backups.sentinel))

- FSx for OpenZFS file systems should be configured to copy tags to backups and volumes ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/fsx-openzfs-copy-tags-to-backups-and-volumes-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/fsx/fsx-openzfs-copy-tags-to-backups-and-volumes-enabled.sentinel))

- GuardDuty EKS Audit Log Monitoring should be enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/guardduty-eks-audit-log-monitoring-should-be-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/guardduty/guardduty-eks-audit-log-monitoring-should-be-enabled.sentinel))

- GuardDuty EKS Runtime Monitoring should be enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/guardduty-eks-protection-runtime-should-be-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/guardduty/guardduty-eks-protection-runtime-should-be-enabled.sentinel))

- GuardDuty Malware Protection for EC2 should be enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/guardduty-malware-protection-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/guardduty/guardduty-malware-protection-enabled.sentinel))

- GuardDuty S3 Protection should be enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/guardduty-s3-protection-should-be-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/guardduty/guardduty-s3-protection-should-be-enabled.sentinel))

- GuardDuty should be enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/guardduty-should-be-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/guardduty/guardduty-should-be-enabled.sentinel))

- IAM policies should not allow full "\*" administrative privileges ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/iam-no-admin-privileges-allowed-by-policies.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/iam/iam-no-admin-privileges-allowed-by-policies.sentinel))

- IAM users should not have IAM policies attached ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/iam-no-policies-attached-to-users.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/iam/iam-no-policies-attached-to-users.sentinel))

- Password policies for IAM users should have strong configurations ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/iam-password-policy-strong-configuration.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/iam/iam-password-policy-strong-configuration.sentinel))

- IAM customer managed policies that you create should not allow wildcard actions for services ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/iam-policy-no-statements-with-full-access.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/iam/iam-policy-no-statements-with-full-access.sentinel))

- Firehose delivery streams should be encrypted at rest ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/kinesis-firehose-delivery-stream-encrypted.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/kinesis/kinesis-firehose-delivery-stream-encrypted.sentinel))

- Kinesis streams should be encrypted at rest ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/kinesis-stream-encrypted.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/kinesis/kinesis-stream-encrypted.sentinel))

- KMS restrict IAM inline policies decrypt all KMS keys ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/kms-restrict-iam-inline-policies-decrypt-all-kms-keys.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/kms/kms-restrict-iam-inline-policies-decrypt-all-kms-keys.sentinel))

- Lambda function policies should prohibit public access ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/lambda-function-public-access-prohibited.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/lambda/lambda-function-public-access-prohibited.sentinel))

- Lambda functions should use supported runtimes ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/lambda-functions-should-use-supported-runtimes.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/lambda/lambda-functions-should-use-supported-runtimes.sentinel))

- VPC Lambda functions should operate in multiple Availability Zones ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/lambda-vpc-multi-az-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/lambda/lambda-vpc-multi-az-check.sentinel))

- AWS Macie Account should have the status attribute set to "ENABLED" ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/macie-status-should-be-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/macie/macie-status-should-be-enabled.sentinel))

- AWS MQ Broker should have the auto_minor_version_upgrade attribute set to true ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/mq-auto-minor-version-upgrade-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/mq/mq-auto-minor-version-upgrade-enabled.sentinel))

- ActiveMQ brokers should stream audit logs to CloudWatch ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/mq-cloudwatch-audit-log-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/mq/mq-cloudwatch-audit-log-enabled.sentinel))

- AWS MQ Broker should have the in_cluster attribute set to true for encryption_in_transit of encryption_info attribute ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/msk-in-cluster-node-require-encrypted-in-transit.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/msk/msk-in-cluster-node-require-encrypted-in-transit.sentinel))

- Neptune DB clusters should publish audit logs to cloudwatch ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/neptune-cluster-audit-logs-publishing-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/neptune/neptune-cluster-audit-logs-publishing-enabled.sentinel))

- Neptune DB clusters should have automated backups enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/neptune-cluster-automated-backups-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/neptune/neptune-cluster-automated-backups-enabled.sentinel))

- Neptune DB clusters should should be configured to copy tags to snapshots ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/neptune-cluster-copy-tags-to-snapshot-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/neptune/neptune-cluster-copy-tags-to-snapshot-enabled.sentinel))

- Neptune DB clusters should have IAM database authentication enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/neptune-cluster-db-auth-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/neptune/neptune-cluster-db-auth-enabled.sentinel))

- Neptune DB clusters should have deletion protection enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/neptune-cluster-deletion-protection-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/neptune/neptune-cluster-deletion-protection-enabled.sentinel))

- Neptune DB clusters should be encrypted at rest ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/neptune-cluster-encryption-at-rest-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/neptune/neptune-cluster-encryption-at-rest-enabled.sentinel))

- Neptune DB cluster snapshots should be encrypted at rest ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/neptune-cluster-snapshot-encryption-at-rest-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/neptune/neptune-cluster-snapshot-encryption-at-rest-enabled.sentinel))

- Network Firewall logging should be enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/network-firewall-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/network-firewall/network-firewall-logging-enabled.sentinel))

- The default stateless action for Network Firewall policies should be drop or forward for fragmented packets ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/network-firewall-policy-default-action-fragmented-packets.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/network-firewall/network-firewall-policy-default-action-fragmented-packets.sentinel))

- Network Firewall policy default action full packets ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/network-firewall-policy-default-action-full-packets.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/network-firewall/network-firewall-policy-default-action-full-packets.sentinel))

- Network Firewall policies should have at least one rule group associated ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/network-firewall-policy-rule-group-associated.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/network-firewall/network-firewall-policy-rule-group-associated.sentinel))

- Network Firewall firewalls should have deletion protection enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/network-firewall-should-have-deletion-protection-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/network-firewall/network-firewall-should-have-deletion-protection-enabled.sentinel))

- Stateless Network Firewall rule group should not be empty in AWS Network Firewall ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/network-firewall-stateless-rule-group.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/network-firewall/network-firewall-stateless-rule-group.sentinel))

- AWS OpenSearch domains should have fine-grained access control enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/opensearch-access-control-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/opensearch/opensearch-access-control-enabled.sentinel))

- AWS OpenSearch should have the enabled in log_publisging_options attribute set to true and log_type set to 'AUDIT_LOGS' ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/opensearch-audit-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/opensearch/opensearch-audit-logging-enabled.sentinel))

- AWS OpenSearch should have the instance count in cluster_config attribute greater than or equal to 3 ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/opensearch-data-node-fault-tolerance.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/opensearch/opensearch-data-node-fault-tolerance.sentinel))

- AWS OpenSearch Domain should have the enabled in encrypt_at_rest attribute set to true ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/opensearch-encrypted-at-rest.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/opensearch/opensearch-encrypted-at-rest.sentinel))

- Connections to AWS OpenSearch domains should be encrypted using the latest TLS security policy ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/opensearch-https-required.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/opensearch/opensearch-https-required.sentinel))

- OpenSearch domains should not be publicly accessible ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/opensearch-in-vpc-only.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/opensearch/opensearch-in-vpc-only.sentinel))

- AWS OpenSearch should have the enabled in log_publisging_options attribute set to true ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/opensearch-logs-to-cloudwatch.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/opensearch/opensearch-logs-to-cloudwatch.sentinel))

- AWS OpenSearch should have the enabled in node-to-node-encryption attribute set to true ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/opensearch-node-to-node-encryption-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/opensearch/opensearch-node-to-node-encryption-check.sentinel))

- AWS OpenSearch domains should have the latest software update installed ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/opensearch-update-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/opensearch/opensearch-update-check.sentinel))

- AWS RDS Aurora MySQL Cluster should contain 'audit' for enabled_cloudwatch_logs_exports attribute ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-aurora-mysql-audit-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-aurora-mysql-audit-logging-enabled.sentinel))

- AWS RDS cluster snapshots and database snapshots should be encrypted at rest ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-cluster-and-db-snapshot-encrypted.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-cluster-and-db-snapshot-encrypted.sentinel))

- AWS RDS cluster should be configured to copy tags to snapshots ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-copy-tags-to-snapshot-configured.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-copy-tags-to-snapshot-configured.sentinel))

- AWS RDS Cluster should have the master_username attribute not set to 'admin' (default_value) ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-cluster-default-admin-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-cluster-default-admin-check.sentinel))

- AWS RDS Cluster should have the storage_encrypted attribute set to true ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-cluster-encrypted-at-rest.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-cluster-encrypted-at-rest.sentinel))

- AWS Event Subscriptions should have Event Notifications configured for the AWS RDS Cluster resource ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-event-notifications-configured-for-critical-events.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-event-notifications-configured-for-critical-events.sentinel))

- AWS RDS DB instances should have encryption at-rest enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-encryption-at-rest-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-encryption-at-rest-enabled.sentinel))

- AWS RDS DB instances should have automatic backups enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-ensure-automatic-backups-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-ensure-automatic-backups-enabled.sentinel))

- AWS RDS DB instances should have automatic minor version upgrade enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-ensure-automatic-minor-version-upgrades-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-ensure-automatic-minor-version-upgrades-enabled.sentinel))

- AWS RDS instance should have logging configured ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-ensure-cloudwatch-logs-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-ensure-cloudwatch-logs-enabled.sentinel))

- AWS RDS cluster should have backtracking enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-ensure-cluster-backtracking-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-ensure-cluster-backtracking-enabled.sentinel))

- AWS RDS cluster ensure deletion protection enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-ensure-deletion-protection-enabled-for-rds-cluster.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-ensure-deletion-protection-enabled.sentinel))

- AWS RDS cluster ensure IAM authentication configured ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-ensure-iam-auth-configured-for-rds-cluster.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-ensure-cluster-and-db-instance-iam-auth-configured.sentinel))

- AWS RDS cluster should be configured for multiple Availability Zones ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-ensure-cluster-multi-az-configured.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-ensure-cluster-multi-az-configured.sentinel))

- AWS RDS instance ensure deletion protection enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-ensure-deletion-protection-enabled-for-db-instance.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-ensure-deletion-protection-enabled.sentinel))

- AWS RDS instance ensure IAM authentication configured ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-ensure-iam-auth-configured-for-db-instance.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-ensure-cluster-and-db-instance-iam-auth-configured.sentinel))

- AWS RDS instance should have monitoring configured ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-ensure-monitoring-configured.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-ensure-monitoring-configured.sentinel))

- AWS RDS instance should be configured with Multi AZ ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-ensure-multi-az-configuration.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-ensure-multi-az-configuration.sentinel))

- RDS instances should not use a database engine default port ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-ensure-no-default-port.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-ensure-no-default-port.sentinel))

- AWS RDS DB instances should be configured to copy tags to snapshots ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-copy-tags-to-snapshot-configured.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-copy-tags-to-snapshot-configured.sentinel))

- AWS RDS DB Instance should have the username attribute not set to 'admin' (default_value) ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-instance-default-admin-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-instance-default-admin-check.sentinel))

- AWS DB RDS instances should be deployed in a VPC ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-instance-deployed-in-vpc.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-instance-deployed-in-vpc.sentinel))

- AWS Event Subscriptions should have Event Notifications configured for the AWS RDS Instance resource ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-event-notifications-configured-for-critical-events.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-event-notifications-configured-for-critical-events.sentinel))

- AWS RDS instance should be private ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-instance-should-be-private.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-instance-should-be-private.sentinel))

- AWS Event Subscriptions should have Event Notifications configured for the AWS RDS Parameter Group resource ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-event-notifications-configured-for-critical-events.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-event-notifications-configured-for-critical-events.sentinel))

- AWS Event Subscriptions should have Event Notifications configured for the AWS RDS Security Group resource ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/rds-event-notifications-configured-for-critical-events.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/rds/rds-event-notifications-configured-for-critical-events.sentinel))

- AWS Redshift Cluster should have the enable attribute set to true in logging or referenced to the resource 'aws_redshift_logging' ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/redshift-cluster-audit-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/redshift/redshift-cluster-audit-logging-enabled.sentinel))

- AWS Redshift clusters should have automated_snapshot_retention_period set between '7 to 35' ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/redshift-cluster-automated-snapshot-retention-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/redshift/redshift-cluster-automated-snapshot-retention-enabled.sentinel))

- AWS Redshift Cluster should have the master_username attribute not set to null or 'awsuser' (default_value) ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/redshift-cluster-default-admin-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/redshift/redshift-cluster-default-admin-check.sentinel))

- AWS Redshift Cluster should have the database_name attribute not set to 'dev' (default_value) ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/redshift-cluster-default-db-name-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/redshift/redshift-cluster-default-db-name-check.sentinel))

- AWS Redshift Cluster should have the enhanced_vpc_routing attribute set to true ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/redshift-cluster-enhanced-vpc-routing-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/redshift/redshift-cluster-enhanced-vpc-routing-enabled.sentinel))

- AWS Redshift Cluster should have the allow_version_upgrade attribute set to true ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/redshift-cluster-maintenance-settings-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/redshift/redshift-cluster-maintenance-settings-check.sentinel))

- AWS Redshift Cluster should have the publicly_accessable attribute set to false ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/redshift-cluster-public-access-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/redshift/redshift-cluster-public-access-check.sentinel))

- AWS Redshift Cluster should have the encrypted attribute set to true ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/redshift-cluster-should-be-encrypted-at-rest.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/redshift/redshift-cluster-should-be-encrypted-at-rest.sentinel))

- AWS Redshift Cluster should have the require_ssl parameter in the AWS Redshift Parameter Group set to true ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/redshift-cluster-should-be-encrypted-at-transit.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/redshift/redshift-cluster-should-be-encrypted-at-transit.sentinel))

- This policy requires resources of type aws_security_group aws_security_group_rule and aws_vpc_security_group_ingress_rule Redshift Parameter Group set to true to block ingress traffic from unknown sources to resources of type aws_redshift_cluster ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/redshift-cluster-unrestricted-port-access-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/redshift/redshift-cluster-unrestricted-port-access-check.sentinel))

- S3 access points should have block public access settings enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/s3-access-point-block-public-access-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/s3/s3-access-point-block-public-access-enabled.sentinel))

- S3 general purpose buckets should have block public access settings enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/s3-block-public-access-account-level.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/s3/s3-block-public-access-account-level.sentinel))

- Ensure that S3 Buckets are configured with 'Block public access (bucket settings)' ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/s3-block-public-access-bucket-level.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/s3/s3-block-public-access-bucket-level.sentinel))

- S3 general purpose buckets should block public read access ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/s3-bucket-block-public-read-access.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/s3/s3-bucket-block-public-read-access.sentinel))

- S3 general purpose buckets should block public write access ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/s3-bucket-block-public-write-access.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/s3/s3-bucket-block-public-write-access.sentinel))

- S3 general purpose bucket policies should restrict access to other AWS accounts ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/s3-bucket-policy-restrict-access-to-other-accounts.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/s3/s3-bucket-policy-restrict-access-to-other-accounts.sentinel))

- Ensure S3 Bucket Policy is set to deny HTTP requests ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/s3-require-ssl.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/s3/s3-require-ssl.sentinel))

- AWS Sagemaker Endpoint Configuration should have the initial_instance_count greater than one for the production_variants atribute ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/sagemaker-endpoint-config-prod-instance-count-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/sagemaker/sagemaker-endpoint-config-prod-instance-count-check.sentinel))

- AWS Sagemaker Notebook instance should be launched in custom vpc ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/sagemaker-notebook-ensure-subnet-id-for-instance.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/sagemaker/sagemaker-notebook-ensure-subnet-id-for-instance.sentinel))

- AWS Sagemaker Notebook instance should have the root_access set to "Disabled" ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/sagemaker-notebook-instance-root-access-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/sagemaker/sagemaker-notebook-instance-root-access-check.sentinel))

- AWS Sagemaker Notebook instance should have the direct_internet_access set to "Disabled" ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/sagemaker-notebook-no-direct-internet-access.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/sagemaker/sagemaker-notebook-no-direct-internet-access.sentinel))

- AWS SageMaker app image configurations should be tagged ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/sagemaker-app-image-configurations-should-be-tagged.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/sagemaker/sagemaker-app-image-configurations-should-be-tagged.sentinel))

- Secrets Manager secrets should have automatic rotation enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/secretsmanager-auto-rotation-enabled-check.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/secretsmanager/secretsmanager-auto-rotation-enabled-check.sentinel))

- Service Catalog portfolios should be shared within an AWS organization only ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/service-catalog-shared-within-organization.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/servicecatalog/service-catalog-shared-within-organization.sentinel))

- Amazon SQS queues should be encrypted at rest ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/sqs-queue-should-be-encrypted-at-rest.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/sqs/sqs-queue-should-be-encrypted-at-rest.sentinel))

- SQS queue access policies should not allow public access ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/sqs-queue-block-public-access.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/sqs/sqs-queue-block-public-access.sentinel))

- SSM documents should not be public ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/ssm-documents-should-not-be-public.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/ssm/ssm-documents-should-not-be-public.sentinel))

- Step Functions state machines should have logging turned on ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/step-functions-state-machine-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/stepfunction/step-functions-state-machine-logging-enabled.sentinel))

- Transfer Family servers should not use FTP protocol for endpoint connection ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/transfer-family-server-should-not-use-ftp.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/transfer/transfer-family-server-should-not-use-ftp.sentinel))

- AWS WAF Classic Global Web ACL logging should be enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/waf-classic-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/waf/waf-classic-logging-enabled.sentinel))

- AWS WAF Classic global rules should have at least one condition ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/waf-global-rule-not-empty.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/waf/waf-global-rule-not-empty.sentinel))

- AWS WAF Classic global rule groups should have at least one rule ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/waf-global-rulegroup-not-empty.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/waf/waf-global-rulegroup-not-empty.sentinel))

- AWS WAF Classic global web ACLs should have at least one rule or rule group ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/waf-global-webacl-not-empty.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/waf/waf-global-webacl-not-empty.sentinel))

- AWS WAF Classic Regional rules should have at least one condition ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/waf-regional-rule-not-empty.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/waf/waf-regional-rule-not-empty.sentinel))

- AWS WAF Classic Regional rule groups should have at least one rule ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/waf-regional-rulegroup-not-empty.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/waf/waf-regional-rulegroup-not-empty.sentinel))

- AWS WAF Classic Regional web ACLs should have at least one rule or rule group ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/waf-regional-webacl-not-empty.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/waf/waf-regional-webacl-not-empty.sentinel))

- AWS WAF rules should have CloudWatch metrics enabled ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/wafv2-rulegroup-logging-enabled.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/waf/wafv2-rulegroup-logging-enabled.sentinel))

- AWS WAF web ACLs should have at least one rule or rule group ([docs](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/docs/policies/wafv2-webacl-not-empty.md) | [code](https://github.com/hashicorp/policy-library-FSBP-Policy-Set-for-AWS-Terraform/blob/main/policies/waf/wafv2-webacl-not-empty.sentinel))
