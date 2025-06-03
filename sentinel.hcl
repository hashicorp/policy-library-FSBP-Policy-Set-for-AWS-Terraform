# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: BUSL-1.1

import "module" "report" {
  source = "./modules/report/report.sentinel"
}

import "module" "tfresources" {
  source = "./modules/tfresources/tfresources.sentinel"
}

import "module" "tfplan-functions" {
  source = "./modules/tfplan-functions/tfplan-functions.sentinel"
}

import "module" "tfconfig-functions" {
  source = "./modules/tfconfig-functions/tfconfig-functions.sentinel"
}

policy "ecr-tag-immutability-configured" {
  source = "./policies/ecr/ecr-tag-immutability-configured.sentinel"
  enforcement_level = "advisory"
}

policy "ecr-image-scanning-enabled" {
  source = "./policies/ecr/ecr-image-scanning-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "ecr-lifecycle-policy-configured" {
  source = "./policies/ecr/ecr-lifecycle-policy-configured.sentinel"
  enforcement_level = "advisory"
}

policy "eks-cluster-supported-k8s-version-check" {
  source = "./policies/eks/eks-cluster-supported-k8s-version-check.sentinel"
  enforcement_level = "advisory"
}

policy "eks-cluster-encrypted-kubernetes-secrets" {
  source = "./policies/eks/eks-cluster-encrypted-kubernetes-secrets.sentinel"
  enforcement_level = "advisory"
}

policy "eks-cluster-audit-logging-enabled" {
  source = "./policies/eks/eks-cluster-audit-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "eks-cluster-endpoints-restrict-public-access" {
  source = "./policies/eks/eks-cluster-endpoints-restrict-public-access.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-cluster-enable-container-insights" {
  source = "./policies/ecs/ecs-cluster-enable-container-insights.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-fargate-service-platform-compatibility" {
  source = "./policies/ecs/ecs-fargate-service-platform-compatibility.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-task-definition-log-configuration-present" {
  source = "./policies/ecs/ecs-task-definition-log-configuration-present.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-task-definition-secure-networking-mode-and-user-definitions" {
  source = "./policies/ecs/ecs-task-definition-secure-networking-mode-and-user-definitions.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-task-definition-read-only-root-file-system-access" {
  source = "./policies/ecs/ecs-task-definition-read-only-root-file-system-access.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-task-definition-restrict-process-id" {
  source = "./policies/ecs/ecs-task-definition-restrict-process-id.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-task-definition-no-secrets-as-environment-variables" {
  source = "./policies/ecs/ecs-task-definition-no-secrets-as-environment-variables.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-service-no-public-ip-assignment" {
  source = "./policies/ecs/ecs-service-no-public-ip-assignment.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-non-privileged-container-definitions" {
  source = "./policies/ecs/ecs-non-privileged-container-definitions.sentinel"
  enforcement_level = "advisory"
}

policy "elasticache-redis-cluster-auto-backup-enabled" {
  source = "./policies/elasticache/elasticache-redis-cluster-auto-backup-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticache-redis-cluster-auto-minor-version-upgrade-enabled" {
  source = "./policies/elasticache/elasticache-redis-cluster-auto-minor-version-upgrade-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticache-redis-replication-group-auto-failover-enabled" {
  source = "./policies/elasticache/elasticache-redis-replication-group-auto-failover-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticache-redis-replication-group-encryption-at-rest-enabled" {
  source = "./policies/elasticache/elasticache-redis-replication-group-encryption-at-rest-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticache-redis-replication-group-encryption-at-transit-enabled" {
  source = "./policies/elasticache/elasticache-redis-replication-group-encryption-at-transit-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elb-configure-https-tls-termination-classic-load-balancer" {
  source = "./policies/elb/elb-configure-https-tls-termination-classic-load-balancer.sentinel"
  enforcement_level = "advisory"
}

policy "elb-connection-draining-enabled" {
  source = "./policies/elb/elb-connection-draining-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elb-cross-zone-load-balancing-enabled" {
  source = "./policies/elb/elb-cross-zone-load-balancing-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elb-drop-invalid-http-headers" {
  source = "./policies/elb/elb-drop-invalid-http-headers.sentinel"
  enforcement_level = "advisory"
}

policy "elb-ensure-access-logging-enabled" {
  source = "./policies/elb/elb-ensure-access-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elb-ensure-deletion-protection-enabled" {
  source = "./policies/elb/elb-ensure-deletion-protection-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elb-ensure-http-request-redirection" {
  source = "./policies/elb/elb-ensure-http-request-redirection.sentinel"
  enforcement_level = "advisory"
}

policy "elb-ensure-ssl-listener-acm-cert-classic-load-balancer" {
  source = "./policies/elb/elb-ensure-ssl-listener-acm-cert-classic-load-balancer.sentinel"
  enforcement_level = "advisory"
}

policy "elb-ensure-ssl-listener-predefined-security-policy" {
  source = "./policies/elb/elb-ensure-ssl-listener-predefined-security-policy.sentinel"
  enforcement_level = "advisory"
}

policy "elb-ensure-multi-az-configuration-classic-load-balancer" {
  source = "./policies/elb/elb-ensure-multi-az-configuration-classic-load-balancer.sentinel"
  enforcement_level = "advisory"
}

policy "elb-ensure-valid-desync-mitigation-mode-application-load-balancer" {
  source = "./policies/elb/elb-ensure-valid-desync-mitigation-mode.sentinel"
  enforcement_level = "advisory"
  params = {
    lb_type = "application"
  }
}

policy "elb-ensure-valid-desync-mitigation-mode-classic-load-balancer" {
  source = "./policies/elb/elb-ensure-valid-desync-mitigation-mode.sentinel"
  enforcement_level = "advisory"
  params = {
    lb_type = "classic"
  }
}

policy "rds-instance-should-be-private" {
  source = "./policies/rds/rds-instance-should-be-private.sentinel"
  enforcement_level = "advisory"
}

policy "rds-encryption-at-rest-enabled" {
  source = "./policies/rds/rds-encryption-at-rest-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "rds-cluster-and-db-snapshot-encrypted" {
  source = "./policies/rds/rds-cluster-and-db-snapshot-encrypted.sentinel"
  enforcement_level = "advisory"
}

policy "rds-ensure-monitoring-configured" {
  source = "./policies/rds/rds-ensure-monitoring-configured.sentinel"
  enforcement_level = "advisory"
}

policy "rds-ensure-multi-az-configuration" {
  source = "./policies/rds/rds-ensure-multi-az-configuration.sentinel"
  enforcement_level = "advisory"
}

policy "rds-ensure-cloudwatch-logs-enabled" {
  source = "./policies/rds/rds-ensure-cloudwatch-logs-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "rds-ensure-cluster-multi-az-configured" {
  source = "./policies/rds/rds-ensure-cluster-multi-az-configured.sentinel"
  enforcement_level = "advisory"
}

policy "rds-cluster-copy-tags-to-snapshot-configured" {
  source = "./policies/rds/rds-copy-tags-to-snapshot-configured.sentinel"
  enforcement_level = "advisory"
  params = {
    resource = "aws_rds_cluster"
  }
}

policy "rds-instance-copy-tags-to-snapshot-configured" {
  source = "./policies/rds/rds-copy-tags-to-snapshot-configured.sentinel"
  enforcement_level = "advisory"
  params = {
    resource = "aws_db_instance"
  }
}

policy "rds-ensure-cluster-deletion-protection-enabled" {
  source = "./policies/rds/rds-ensure-deletion-protection-enabled.sentinel"
  enforcement_level = "advisory"
  params = {
    resource_type = "aws_rds_cluster"
  }
}

policy "rds-ensure-db-instance-deletion-protection-enabled" {
  source = "./policies/rds/rds-ensure-deletion-protection-enabled.sentinel"
  enforcement_level = "advisory"
  params = {
    resource_type = "aws_db_instance"
  }
}

policy "rds-ensure-cluster-iam-auth-configured" {
  source = "./policies/rds/rds-ensure-cluster-and-db-instance-iam-auth-configured.sentinel"
  enforcement_level = "advisory"
  params = {
    resource_type = "aws_rds_cluster"
  }
}

policy "rds-ensure-db-instance-iam-auth-configured" {
  source            = "./policies/rds/rds-ensure-cluster-and-db-instance-iam-auth-configured.sentinel"
  enforcement_level = "advisory"
  params = {
    resource_type = "aws_db_instance"
  }
}

policy "rds-ensure-automatic-backups-enabled" {
  source = "./policies/rds/rds-ensure-automatic-backups-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "rds-ensure-automatic-minor-version-upgrades-enabled" {
  source = "./policies/rds/rds-ensure-automatic-minor-version-upgrades-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "rds-ensure-cluster-backtracking-enabled" {
  source = "./policies/rds/rds-ensure-cluster-backtracking-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "rds-instance-deployed-in-vpc" {
  source = "./policies/rds/rds-instance-deployed-in-vpc.sentinel"
  enforcement_level = "advisory"
}

policy "rds-ensure-no-default-port" {
  source = "./policies/rds/rds-ensure-no-default-port.sentinel"
  enforcement_level = "advisory"
}

policy "rds-cluster-default-admin-check" {
  source = "./policies/rds/rds-cluster-default-admin-check.sentinel"
  enforcement_level = "advisory"
}

policy "rds-instance-default-admin-check" {
  source = "./policies/rds/rds-instance-default-admin-check.sentinel"
  enforcement_level = "advisory"
}

policy "rds-cluster-encrypted-at-rest" {
  source = "./policies/rds/rds-cluster-encrypted-at-rest.sentinel"
  enforcement_level = "advisory"
}

policy "rds-aurora-mysql-audit-logging-enabled" {
  source = "./policies/rds/rds-aurora-mysql-audit-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "rds-cluster-event-notifications-configured-for-critical-events" {
  source = "./policies/rds/rds-event-notifications-configured-for-critical-events.sentinel"
  enforcement_level = "advisory"
  params = {
    "resource_type" = "aws_rds_cluster"
    "source_type" = "db-cluster"
  }
}

policy "rds-instance-event-notifications-configured-for-critical-events" {
  source = "./policies/rds/rds-event-notifications-configured-for-critical-events.sentinel"
  enforcement_level = "advisory"
  params = {
    resource_type = "aws_rds_cluster_instance"
    source_type = "db-instance"
  }
}

policy "rds-parameter-group-event-notifications-configured-for-critical-events" {
  source = "./policies/rds/rds-event-notifications-configured-for-critical-events.sentinel"
  enforcement_level = "advisory"
  params = {
    "resource_type" = "aws_rds_cluster_parameter_group"
    "source_type" = "db-parameter-group"
  }
}

policy "rds-security-group-event-notifications-configured-for-critical-events" {
  source = "./policies/rds/rds-event-notifications-configured-for-critical-events.sentinel"
  enforcement_level = "advisory"
  params = {
    "resource_type" = "aws_security_group",
    "source_type" = "db-security-group",
  }
}

policy "s3-block-public-access-account-level" {
    source = "./policies/s3/s3-block-public-access-account-level.sentinel"
    enforcement_level = "advisory"
}

policy "s3-block-public-access-bucket-level" {
    source = "./policies/s3/s3-block-public-access-bucket-level.sentinel"
    enforcement_level = "advisory"
}

policy "s3-require-ssl" {
  source = "./policies/s3/s3-require-ssl.sentinel"
  enforcement_level = "advisory"
}

policy "elasticache-redis-replication-group-redis-auth-enabled" {
  source = "./policies/elasticache/elasticache-redis-replication-group-redis-auth-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticache-redis-cluster-non-default-subnet-enabled" {
  source = "./policies/elasticache/elasticache-redis-cluster-non-default-subnet-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "dynamo-db-tables-point-in-time-recovery-enabled" {
  source = "./policies/dynamo-db/dynamo-db-tables-point-in-time-recovery-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "docdb-cluster-backup-retention-check" {
  source = "./policies/docdb/docdb-cluster-backup-retention-check.sentinel"
  enforcement_level = "advisory"
}

policy "docdb-cluster-deletion-protection-enabled" {
  source = "./policies/docdb/docdb-cluster-deletion-protection-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "docdb-cluster-storage-encrypted" {
  source = "./policies/docdb/docdb-cluster-storage-encrypted.sentinel"
  enforcement_level = "advisory"
}

policy "docdb-cluster-audit-logging-enabled" {
  source = "./policies/docdb/docdb-cluster-audit-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "dynamo-db-accelerator-clusters-encryption-at-rest-enabled" {
  source = "./policies/dynamo-db/dynamo-db-accelerator-clusters-encryption-at-rest-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "dynamo-db-tables-delete-protection-enabled" {
  source = "./policies/dynamo-db/dynamo-db-tables-delete-protection-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticbeanstalk-enhanced-health-reporting-enabled" {
  source = "./policies/elasticbeanstalk/elasticbeanstalk-enhanced-health-reporting-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "dynamo-db-tables-scales-capacity-with-demand" {
  source = "./policies/dynamo-db/dynamo-db-tables-scales-capacity-with-demand.sentinel"
  enforcement_level = "advisory"
  params = {
      min_read_capacity = 1
      max_read_capacity = 40000
      min_write_capacity = 1
      max_write_capacity = 40000
      min_target_read_utilization = 20
      max_target_read_utilization = 90
      min_target_write_utilization = 20
      max_target_write_utilization = 90
 }
}

policy "elasticbeanstalk-managed-platform-updates-enabled" {
  source = "./policies/elasticbeanstalk/elasticbeanstalk-managed-platform-updates-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticbeanstalk-cloudwatch-log-streaming-enabled" {
  source = "./policies/elasticbeanstalk/elasticbeanstalk-cloudwatch-log-streaming-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "emr-block-public-access-enabled" {
  source = "./policies/emr/emr-block-public-access-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "neptune-cluster-encryption-at-rest-enabled" {
 source = "./policies/neptune/neptune-cluster-encryption-at-rest-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "neptune-cluster-audit-logs-publishing-enabled" {
 source = "./policies/neptune/neptune-cluster-audit-logs-publishing-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "neptune-cluster-deletion-protection-enabled" {
 source = "./policies/neptune/neptune-cluster-deletion-protection-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "neptune-cluster-automated-backups-enabled" {
 source = "./policies/neptune/neptune-cluster-automated-backups-enabled.sentinel"
  enforcement_level = "advisory"
  params = {
      backup_retention_period = 7
  }
}

policy "neptune-cluster-db-auth-enabled" {
 source = "./policies/neptune/neptune-cluster-db-auth-enabled.sentinel"
 enforcement_level = "advisory"
}

policy "neptune-cluster-copy-tags-to-snapshot-enabled" {
 source = "./policies/neptune/neptune-cluster-copy-tags-to-snapshot-enabled.sentinel"
 enforcement_level = "advisory"
}

policy "neptune-cluster-snapshot-encryption-at-rest-enabled" {
 source = "./policies/neptune/neptune-cluster-snapshot-encryption-at-rest-enabled.sentinel"
 enforcement_level = "advisory"
}

policy "sagemaker-notebook-no-direct-internet-access" {
  source = "./policies/sagemaker/sagemaker-notebook-no-direct-internet-access.sentinel"
  enforcement_level = "advisory"
}

policy "sagemaker-notebook-ensure-subnet-id-for-instance" {
  source = "./policies/sagemaker/sagemaker-notebook-ensure-subnet-id-for-instance.sentinel"
  enforcement_level = "advisory"
}

policy "sagemaker-notebook-instance-root-access-check" {
  source = "./policies/sagemaker/sagemaker-notebook-instance-root-access-check.sentinel"
  enforcement_level = "advisory"
}

policy "sagemaker-endpoint-config-prod-instance-count-check" {
  source = "./policies/sagemaker/sagemaker-endpoint-config-prod-instance-count-check.sentinel"
  enforcement_level = "advisory"
  params = {
    initial_instance_count_limit = 1
  }
}

policy "sagemaker-app-image-configurations-should-be-tagged" {
  source = "./policies/sagemaker/sagemaker-app-image-configurations-should-be-tagged.sentinel"
enforcement_level = "advisory"
}

policy "redshift-cluster-public-access-check" {
  source = "./policies/redshift/redshift-cluster-public-access-check.sentinel"
  enforcement_level = "advisory"
}

policy "redshift-cluster-should-be-encrypted-at-transit" {
 source = "./policies/redshift/redshift-cluster-should-be-encrypted-at-transit.sentinel"
 enforcement_level = "advisory"
}

policy "redshift-cluster-automated-snapshot-retention-enabled" {
 source = "./policies/redshift/redshift-cluster-automated-snapshot-retention-enabled.sentinel"
 enforcement_level = "advisory"
 params = {
  automated_snapshot_retention_period_lower_limit = 7
  automated_snapshot_retention_period_upper_limit = 35
 }
}

policy "redshift-cluster-maintenance-settings-check" {
 source = "./policies/redshift/redshift-cluster-maintenance-settings-check.sentinel"
 enforcement_level = "advisory"
}

policy "redshift-cluster-enhanced-vpc-routing-enabled" {
 source = "./policies/redshift/redshift-cluster-enhanced-vpc-routing-enabled.sentinel"
 enforcement_level = "advisory"
}

policy "redshift-cluster-default-admin-check" {
 source = "./policies/redshift/redshift-cluster-default-admin-check.sentinel"
 enforcement_level = "advisory"
}

policy "redshift-cluster-audit-logging-enabled" {
 source = "./policies/redshift/redshift-cluster-audit-logging-enabled.sentinel"
 enforcement_level = "advisory"
}

policy "redshift-cluster-default-db-name-check" {
 source = "./policies/redshift/redshift-cluster-default-db-name-check.sentinel"
 enforcement_level = "advisory"
}

policy "redshift-cluster-should-be-encrypted-at-rest" {
  source = "./policies/redshift/redshift-cluster-should-be-encrypted-at-rest.sentinel"
  enforcement_level = "advisory"
}

policy "redshift-cluster-unrestricted-port-access-check" {
  source = "./policies/redshift/redshift-cluster-unrestricted-port-access-check.sentinel"
  enforcement_level = "advisory"
}

policy "dms-replication-instances-should-not-be-public" {
  source = "./policies/dms/dms-replication-instances-should-not-be-public.sentinel"
  enforcement_level = "advisory"
}

policy "dms-auto-minor-version-upgrade-check" {
  source = "./policies/dms/dms-auto-minor-version-upgrade-check.sentinel"
  enforcement_level = "advisory"
}

policy "dms-endpoint-should-be-ssl-configured" {
  source = "./policies/dms/dms-endpoint-should-be-ssl-configured.sentinel"
  enforcement_level = "advisory"
}

policy "dms-mongo-db-authentication-enabled" {
  source = "./policies/dms/dms-mongo-db-authentication-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "dms-redis-tls-enabled" {
  source = "./policies/dms/dms-redis-tls-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "dms-repliction-task-targetdb-logging-enabled" {
  source = "./policies/dms/dms-repliction-task-logging-enabled.sentinel"
  enforcement_level = "advisory"
  params = {
    "db_type" = "target"
  }
}

policy "dms-repliction-task-sourcedb-logging-enabled" {
  source = "./policies/dms/dms-repliction-task-logging-enabled.sentinel"
  enforcement_level = "advisory"
  params = {
    "db_type" = "source"
  }
}

policy "network-firewall-logging-enabled" {
  source = "./policies/network-firewall/network-firewall-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "network-firewall-policy-rule-group-associated" {
  source = "./policies/network-firewall/network-firewall-policy-rule-group-associated.sentinel"
  enforcement_level = "advisory"
}

policy "macie-status-should-be-enabled" {
  source = "./policies/macie/macie-status-should-be-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "mq-cloudwatch-audit-log-enabled" {
  source = "./policies/mq/mq-cloudwatch-audit-log-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "mq-auto-minor-version-upgrade-enabled" {
  source = "./policies/mq/mq-auto-minor-version-upgrade-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "msk-in-cluster-node-require-encrypted-in-transit" {
  source = "./policies/msk/msk-in-cluster-node-require-encrypted-in-transit.sentinel"
  enforcement_level = "advisory"
}

policy "kinesis-stream-encrypted" {
  source = "./policies/kinesis/kinesis-stream-encrypted.sentinel"
  enforcement_level = "advisory"
}

policy "kms-restrict-iam-inline-policies-decrypt-all-kms-keys" {
  source = "./policies/kms/kms-restrict-iam-inline-policies-decrypt-all-kms-keys.sentinel"
  enforcement_level = "advisory"
}

policy "network-firewall-policy-default-action-full-packets" {
  source = "./policies/network-firewall/network-firewall-policy-default-action-full-packets.sentinel"
  enforcement_level = "advisory"
}

policy "network-firewall-policy-default-action-fragmented-packets" {
  source = "./policies/network-firewall/network-firewall-policy-default-action-fragmented-packets.sentinel"
  enforcement_level = "advisory"
}

policy "network-firewall-stateless-rule-group" {
  source = "./policies/network-firewall/network-firewall-stateless-rule-group.sentinel"
  enforcement_level = "advisory"
}

policy "network-firewall-should-have-deletion-protection-enabled" {
  source = "./policies/network-firewall/network-firewall-should-have-deletion-protection-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "api-gateway-rest-and-websocket-api-logging-enabled" {
  source = "./policies/api-gateway/api-gateway-rest-and-websocket-api-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "api-gateway-rest-have-x-ray-tracing-enabled" {
  source = "./policies/api-gateway/api-gateway-rest-have-x-ray-tracing-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "api-gateway-should-be-associated-with-a-waf-web-acl" {
  source = "./policies/api-gateway/api-gateway-should-be-associated-with-a-waf-web-acl.sentinel"
  enforcement_level = "advisory"
}

policy "api-gateway-access-logging-should-be-configured" {
  source = "./policies/api-gateway/api-gateway-access-logging-should-be-configured.sentinel"
  enforcement_level = "advisory"
}

policy "api-gateway-routes-should-specify-an-authorization-type" {
  source = "./policies/api-gateway/api-gateway-routes-should-specify-an-authorization-type.sentinel"
  enforcement_level = "advisory"
}

policy "api-gateway-rest-configure-ssl-certificates" {
  source = "./policies/api-gateway/api-gateway-rest-configure-ssl-certificates.sentinel"
  enforcement_level = "advisory"
}

policy "api-gateway-rest-cache-have-encryption-enabled" {
  source = "./policies/api-gateway/api-gateway-rest-cache-have-encryption-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "cloudfront-distributions-should-not-use-deprecated-ssl-protocols" {
  source = "./policies/cloudfront/cloudfront-distributions-should-not-use-deprecated-ssl-protocols.sentinel"
  enforcement_level = "advisory"
}

policy "cloudfront-distributions-should-encrypt-traffic-to-custom-origins" {
  source = "./policies/cloudfront/cloudfront-distributions-should-encrypt-traffic-to-custom-origins.sentinel"
  enforcement_level = "advisory"
}

policy "cloudfront-distributions-should-use-sni-to-serve-https-requests" {
  source = "./policies/cloudfront/cloudfront-distributions-should-use-sni-to-serve-https-requests.sentinel"
  enforcement_level = "advisory"
}

policy "cloudfront-distributions-should-use-custom-ssl-tsl-certificates" {
  source = "./policies/cloudfront/cloudfront-distributions-should-use-custom-ssl-tsl-certificates.sentinel"
  enforcement_level = "advisory"
}

policy "cloudfront-distributions-should-have-logging-enabled" {
  source = "./policies/cloudfront/cloudfront-distributions-should-have-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "cloudfront-distributions-should-have-origin-failover-configured" {
  source = "./policies/cloudfront/cloudfront-distributions-should-have-origin-failover-configured.sentinel"
  enforcement_level = "advisory"
}

policy "cloudfront-should-have-default-root-object-configured" {
  source = "./policies/cloudfront/cloudfront-should-have-default-root-object-configured.sentinel"
  enforcement_level = "advisory"
}

policy "cloudfront-should-require-encryption-in-transit" {
  source = "./policies/cloudfront/cloudfront-should-require-encryption-in-transit.sentinel"
  enforcement_level = "advisory"
}

policy "autoscaling-group-should-cover-multiple-azs" {
  source = "./policies/autoscaling-group/autoscaling-group-should-cover-multiple-azs.sentinel"
  enforcement_level = "advisory"
}

policy "autoscaling-group-should-use-launch-templates" {
  source = "./policies/autoscaling-group/autoscaling-group-should-use-launch-templates.sentinel"
   enforcement_level = "advisory"
}

policy "backup-recovery-point-encrypted" {
  source = "./policies/backup/backup-recovery-point-encrypted.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-metadata-imdsv2-required" {
  source = "./policies/ec2/ec2-metadata-imdsv2-required.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-network-acl" {
  source = "./policies/ec2/ec2-network-acl.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-client-vpn-connection-log-enabled" {
  source = "./policies/ec2/ec2-client-vpn-connection-log-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-launch-template-imdsv2-check" {
  source = "./policies/ec2/ec2-launch-template-imdsv2-check.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-vpn-connection-logging-enabled" {
  source = "./policies/ec2/ec2-vpn-connection-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-ebs-encryption-enabled" {
  source = "./policies/ec2/ec2-ebs-encryption-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-launch-template-public-ip-disabled" {
  source = "./policies/ec2/ec2-launch-template-public-ip-disabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-security-group-ingress-traffic-restriction-to-common-ports" {
  source = "./policies/ec2/ec2-security-group-ingress-traffic-restriction-to-common-ports.sentinel"
  enforcement_level = "advisory"
}

policy "elasticsearch-encrypted-at-rest" {
  source = "./policies/elasticsearch/elasticsearch-encrypted-at-rest.sentinel"
  enforcement_level = "advisory"
}

policy "elasticsearch-in-vpc-only" {
  source = "./policies/elasticsearch/elasticsearch-in-vpc-only.sentinel"
  enforcement_level = "advisory"
}

policy "elasticsearch-node-to-node-encryption-check" {
  source = "./policies/elasticsearch/elasticsearch-node-to-node-encryption-check.sentinel"
  enforcement_level = "advisory"
}

policy "elasticsearch-logs-to-cloudwatch" {
  source = "./policies/elasticsearch/elasticsearch-logs-to-cloudwatch.sentinel"
  enforcement_level = "advisory"
}

policy "elasticsearch-audit-logging-enabled" {
  source = "./policies/elasticsearch/elasticsearch-audit-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticsearch-https-required" {
  source = "./policies/elasticsearch/elasticsearch-https-required.sentinel"
  enforcement_level = "advisory"
}

policy "elasticsearch-primary-node-fault-tolerance" {
  source = "./policies/elasticsearch/elasticsearch-primary-node-fault-tolerance.sentinel"
  enforcement_level = "advisory"
  params = {
    master_count_value = 3
  }
}

policy "fsx-openzfs-copy-tags-to-backups-and-volumes-enabled" {
  source = "./policies/fsx/fsx-openzfs-copy-tags-to-backups-and-volumes-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "fsx-lustre-copy-tags-to-backups" {
  source = "./policies/fsx/fsx-lustre-copy-tags-to-backups.sentinel"
  enforcement_level = "advisory"
}

policy "guardduty-s3-protection-should-be-enabled" {
  source = "./policies/guardduty/guardduty-s3-protection-should-be-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "guardduty-eks-protection-runtime-should-be-enabled" {
  source = "./policies/guardduty/guardduty-eks-protection-runtime-should-be-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "guardduty-eks-audit-log-monitoring-should-be-enabled" {
  source = "./policies/guardduty/guardduty-eks-audit-log-monitoring-should-be-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "guardduty-should-be-enabled" {
  source = "./policies/guardduty/guardduty-should-be-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "codebuild-bitbucket-url-should-not-contain-sensitive-credentials" {
  source = "./policies/codebuild/codebuild-bitbucket-url-should-not-contain-sensitive-credentials.sentinel"
  enforcement_level = "advisory"
}

policy "codebuild-project-environments-should-have-a-logging-aws-configuration" {
  source = "./policies/codebuild/codebuild-project-environments-should-have-a-logging-aws-configuration.sentinel"
  enforcement_level = "advisory"
}

policy "codebuild-s3-logs-should-be-encrypted" {
  source = "./policies/codebuild/codebuild-s3-logs-should-be-encrypted.sentinel"
  enforcement_level = "advisory"
}

policy "opensearch-encrypted-at-rest" {
  source = "./policies/opensearch/opensearch-encrypted-at-rest.sentinel"
  enforcement_level = "advisory"
}

policy "opensearch-node-to-node-encryption-check" {
  source = "./policies/opensearch/opensearch-node-to-node-encryption-check.sentinel"
  enforcement_level = "advisory"
}

policy "opensearch-logs-to-cloudwatch" {
  source = "./policies/opensearch/opensearch-logs-to-cloudwatch.sentinel"
  enforcement_level = "advisory"
}

policy "opensearch-audit-logging-enabled" {
  source = "./policies/opensearch/opensearch-audit-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "opensearch-data-node-fault-tolerance" {
  source = "./policies/opensearch/opensearch-data-node-fault-tolerance.sentinel"
  enforcement_level = "advisory"
  params = {
    instance_count = 3
  }
}

policy "opensearch-access-control-enabled" {
  source = "./policies/opensearch/opensearch-access-control-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "opensearch-https-required" {
  source = "./policies/opensearch/opensearch-https-required.sentinel"
   enforcement_level = "advisory"
}

policy "opensearch-update-check" {
  source = "./policies/opensearch/opensearch-update-check.sentinel"
  enforcement_level = "advisory"
}

policy "acm-pca-root-ca-disabled" {
  source = "./policies/acm/acm-pca-root-ca-disabled.sentinel"
  enforcement_level = "advisory"
}

policy "iam-policy-no-statements-with-full-access" {
  source = "./policies/iam/iam-policy-no-statements-with-full-access.sentinel"
  enforcement_level = "advisory"
}

policy "iam-no-policies-attached-to-users" {
  source = "./policies/iam/iam-no-policies-attached-to-users.sentinel"
  enforcement_level = "advisory"
}

policy "iam-password-policy-strong-configuration" {
  source = "./policies/iam/iam-password-policy-strong-configuration.sentinel"
  enforcement_level = "advisory"
  params = {
    minimum_password_length_param = 14
    require_lowercase_characters_param = true
    require_uppercase_characters_param = true
    require_numbers_param = true
    require_symbols_param = true
    allow_users_to_change_password_param = true
    max_password_age_param = 90
    min_password_reuse_prevention_param = 12
    min_password_reuse_prevention_param = 24
  }
}

policy "s3-access-point-block-public-access-enabled" {
  source = "./policies/s3/s3-access-point-block-public-access-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "s3-bucket-block-public-read-access" {
  source = "./policies/s3/s3-bucket-block-public-read-access.sentinel"
   enforcement_level = "advisory"
}

policy "s3-bucket-block-public-write-access" {
  source = "./policies/s3/s3-bucket-block-public-write-access.sentinel"
  enforcement_level = "advisory"
}

policy "s3-bucket-policy-restrict-access-to-other-accounts" {
  source = "./policies/s3/s3-bucket-policy-restrict-access-to-other-accounts.sentinel"
  enforcement_level = "advisory"
}

policy "kinesis-firehose-delivery-stream-encrypted" {
  source = "./policies/kinesis/kinesis-firehose-delivery-stream-encrypted.sentinel"
  enforcement_level = "advisory"
}

policy "lambda-vpc-multi-az-check" {
  source = "./policies/lambda/lambda-vpc-multi-az-check.sentinel"
  enforcement_level = "advisory"
}

policy "waf-classic-logging-enabled" {
  source = "./policies/waf/waf-classic-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-ebs-snapshot-public-restorable-check-account-level" {
  source = "./policies/ec2/ec2-ebs-snapshot-public-restorable-check-account-level.sentinel"
  enforcement_level = "advisory"
}

policy "lambda-function-public-access-prohibited" {
  source = "./policies/lambda/lambda-function-public-access-prohibited.sentinel"
  enforcement_level = "advisory"
}

policy "step-functions-state-machine-logging-enabled" {
  source = "./policies/stepfunction/step-functions-state-machine-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "transfer-family-server-should-not-use-ftp" {
  source = "./policies/transfer/transfer-family-server-should-not-use-ftp.sentinel"
  enforcement_level = "advisory"
}

policy "lambda-functions-should-use-supported-runtimes" {
  source = "./policies/lambda/lambda-functions-should-use-supported-runtimes.sentinel"
  enforcement_level = "advisory"
}

policy "waf-regional-rule-not-empty" {
  source = "./policies/waf/waf-regional-rule-not-empty.sentinel"
  enforcement_level = "advisory"
}

policy "waf-regional-rulegroup-not-empty" {
  source = "./policies/waf/waf-regional-rulegroup-not-empty.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-attached-ebs-volumes-encrypted-at-rest" {
  source = "./policies/ec2/ec2-attached-ebs-volumes-encrypted-at-rest.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-network-acl-should-have-subnet-ids" {
  source = "./policies/ec2/ec2-network-acl-should-have-subnet-ids.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-subnet-with-auto-assign-public-ip-disabled" {
  source = "./policies/ec2/ec2-subnet-with-auto-assign-public-ip-disabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-vpc-default-security-group-no-traffic" {
  source = "./policies/ec2/ec2-vpc-default-security-group-no-traffic.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-vpc-flow-logging-enabled" {
  source = "./policies/ec2/ec2-vpc-flow-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "opensearch-in-vpc-only" {
  source = "./policies/opensearch/opensearch-in-vpc-only.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-instance-should-not-use-multiple-enis" {
  source = "./policies/ec2/ec2-instance-should-not-use-multiple-enis.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-instance-virtualization-should-not-be-paravirtual" {
  source = "./policies/ec2/ec2-instance-virtualization-should-not-be-paravirtual.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-transit-gateway-auto-vpc-attach-disabled" {
  source = "./policies/ec2/ec2-transit-gateway-auto-vpc-attach-disabled.sentinel"
  enforcement_level = "advisory"
}

policy "waf-global-rulegroup-not-empty" {
  source = "./policies/waf/waf-global-rulegroup-not-empty.sentinel"
  enforcement_level = "advisory"
}

policy "wafv2-webacl-not-empty" {
  source = "./policies/waf/wafv2-webacl-not-empty.sentinel"
  enforcement_level = "advisory"
}

policy "wafv2-rulegroup-logging-enabled" {
  source = "./policies/waf/wafv2-rulegroup-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-service-vpc-endpoint-enabled" {
  source = "./policies/ec2/ec2-service-vpc-endpoint-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "waf-global-rule-not-empty" {
  source = "./policies/waf/waf-global-rule-not-empty.sentinel"
  enforcement_level = "advisory"
}

policy "waf-global-webacl-not-empty" {
  source = "./policies/waf/waf-global-webacl-not-empty.sentinel"
  enforcement_level = "advisory"
}

policy "waf-regional-webacl-not-empty" {
  source = "./policies/waf/waf-regional-webacl-not-empty.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-instance-should-not-have-public-ip" {
  source = "./policies/ec2/ec2-instance-should-not-have-public-ip.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-security-group-ingress-traffic-restriction-to-unauthorized-ports" {
  source = "./policies/ec2/ec2-security-group-ingress-traffic-restriction-to-unauthorized-ports.sentinel"
  enforcement_level = "advisory"
  params = {
    authorized_tcp_ports = [80, 443]
    authorized_udp_ports = []
  }
}

policy "guardduty-malware-protection-enabled" {
  source = "./policies/guardduty/guardduty-malware-protection-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "iam-no-admin-privileges-allowed-by-policies" {
  source = "./policies/iam/iam-no-admin-privileges-allowed-by-policies.sentinel"
  enforcement_level = "advisory"
}

policy "elasticsearch-domains-should-have-atleast-three-data-nodes" {
  source = "./policies/elasticsearch/elasticsearch-domains-should-have-atleast-three-data-nodes.sentinel"
  enforcement_level = "advisory"
}

policy "cloudfront-s3-origin-non-existent-bucket" {
  source = "./policies/cloudfront/cloudfront-s3-origin-non-existent-bucket.sentinel"
  enforcement_level = "advisory"
}

policy "cloudfront-associated-with-waf" {
  source = "./policies/cloudfront/cloudfront-associated-with-waf.sentinel"
  enforcement_level = "advisory"
}

policy "cloudfront-s3-origin-access-control-enabled" {
  source = "./policies/cloudfront/cloudfront-s3-origin-access-control-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "dms-endpoints-should-use-ssl" {
  source = "./policies/dms/dms-endpoints-should-use-ssl.sentinel"
  enforcement_level = "advisory"
}

policy "eventbridge-custom-event-bus-should-have-attached-policy" {
  source = "./policies/eventbridge/eventbridge-custom-event-bus-should-have-attached-policy.sentinel"
  enforcement_level = "advisory"
}

policy "sqs-queue-should-be-encrypted-at-rest" {
  source = "./policies/sqs/sqs-queue-should-be-encrypted-at-rest.sentinel"
  enforcement_level = "advisory"
}

policy "ssm-documents-should-not-be-public" {
  source = "./policies/ssm/ssm-documents-should-not-be-public.sentinel"
  enforcement_level = "advisory"
}

policy "secretsmanager-auto-rotation-enabled-check" {
  source = "./policies/secretsmanager/secretsmanager-auto-rotation-enabled-check.sentinel"
  enforcement_level = "advisory"
}

policy "service-catalog-shared-within-organization" {
  source = "./policies/servicecatalog/service-catalog-shared-within-organization.sentinel"
  enforcement_level = "advisory"
}

policy "acm-rsa-certificate-key-length-atleast-2048" {
  source = "./policies/acm/acm-rsa-certificate-key-length-atleast-2048.sentinel"
  enforcement_level = "advisory"
}

policy "autoscaling-group-with-load-balancer-attached-should-have-elb-healthcheck" {
  source = "./policies/autoscaling-group/autoscaling-group-with-load-balancer-attached-should-have-elb-healthcheck.sentinel"
  enforcement_level = "advisory"
}

policy "autoscaling-launch-config-public-ip-disabled" {
  source = "./policies/autoscaling-group/autoscaling-launch-config-public-ip-disabled.sentinel"
  enforcement_level = "advisory"
}

policy "autoscaling-group-should-use-multiple-instance-types" {
  source = "./policies/autoscaling-group/autoscaling-group-should-use-multiple-instance-types.sentinel"
  enforcement_level = "advisory"
}


policy "sqs-queue-block-public-access" {
  source = "./policies/sqs/sqs-queue-block-public-access.sentinel"
  enforcement_level = "advisory"
}