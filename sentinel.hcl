import "module" "report" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/report/report.sentinel"
}

// Replace the source with the appropriate plugin binary
// based on the environment where you run policies.
import "plugin" "tfresources" {
  source = "./plugins/linux/amd64/sentinel-plugin-tfresources"
}

policy "ecr-tag-immutability-configured" {
  source = "./policies/ecr-tag-immutability-configured.sentinel"
  enforcement_level = "advisory"
}

policy "ecr-image-scanning-enabled" {
  source = "./policies/ecr-image-scanning-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "ecr-lifecycle-policy-configured" {
  source = "./policies/ecr-lifecycle-policy-configured.sentinel"
  enforcement_level = "advisory"
}

policy "eks-cluster-supported-k8s-version-check" {
  source = "./policies/eks-cluster-supported-k8s-version-check.sentinel"
  enforcement_level = "advisory"
}

policy "eks-cluster-encrypted-kubernetes-secrets" {
  source = "./policies/eks-cluster-encrypted-kubernetes-secrets.sentinel"
  enforcement_level = "advisory"
}

policy "eks-cluster-audit-logging-enabled" {
  source = "./policies/eks-cluster-audit-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "eks-cluster-endpoints-restrict-public-access" {
  source = "./policies/eks-cluster-endpoints-restrict-public-access.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-cluster-enable-container-insights" {
  source = "./policies/ecs-cluster-enable-container-insights.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-fargate-service-platform-compatibility" {
  source = "./policies/ecs-fargate-service-platform-compatibility.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-task-definition-log-configuration-present" {
  source = "./policies/ecs-task-definition-log-configuration-present.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-task-definition-secure-networking-mode-and-user-definitions" {
  source = "./policies/ecs-task-definition-secure-networking-mode-and-user-definitions.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-task-definition-read-only-root-file-system-access" {
  source = "./policies/ecs-task-definition-read-only-root-file-system-access.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-task-definition-restrict-process-id" {
  source = "./policies/ecs-task-definition-restrict-process-id.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-task-definition-no-secrets-as-environment-variables" {
  source = "./policies/ecs-task-definition-no-secrets-as-environment-variables.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-service-no-public-ip-assignment" {
  source = "./policies/ecs-service-no-public-ip-assignment.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-non-privileged-container-definitions" {
  source = "./policies/ecs-non-privileged-container-definitions.sentinel"
  enforcement_level = "advisory"
}

policy "elasticache-redis-cluster-auto-backup-enabled" {
  source = "./policies/elasticache-redis-cluster-auto-backup-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticache-redis-cluster-auto-minor-version-upgrade-enabled" {
  source = "./policies/elasticache-redis-cluster-auto-minor-version-upgrade-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticache-redis-replication-group-auto-failover-enabled" {
  source = "./policies/elasticache-redis-replication-group-auto-failover-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticache-redis-replication-group-encryption-at-rest-enabled" {
  source = "./policies/elasticache-redis-replication-group-encryption-at-rest-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticache-redis-replication-group-encryption-at-transit-enabled" {
  source = "./policies/elasticache-redis-replication-group-encryption-at-transit-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elb-configure-https-tls-termination-classic-load-balancer" {
  source = "./policies/elb-configure-https-tls-termination-classic-load-balancer.sentinel"
  enforcement_level = "advisory"
}

policy "elb-connection-draining-enabled" {
  source = "./policies/elb-connection-draining-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elb-cross-zone-load-balancing-enabled" {
  source = "./policies/elb-cross-zone-load-balancing-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elb-drop-invalid-http-headers" {
  source = "./policies/elb-drop-invalid-http-headers.sentinel"
  enforcement_level = "advisory"
}

policy "elb-ensure-access-logging-enabled" {
  source = "./policies/elb-ensure-access-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elb-ensure-deletion-protection-enabled" {
  source = "./policies/elb-ensure-deletion-protection-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elb-ensure-http-request-redirection" {
  source = "./policies/elb-ensure-http-request-redirection.sentinel"
  enforcement_level = "advisory"
}

policy "elb-ensure-ssl-listener-acm-cert-classic-load-balancer" {
  source = "./policies/elb-ensure-ssl-listener-acm-cert-classic-load-balancer.sentinel"
  enforcement_level = "advisory"
}

policy "elb-ensure-ssl-listener-predefined-security-policy" {
  source = "./policies/elb-ensure-ssl-listener-predefined-security-policy.sentinel"
  enforcement_level = "advisory"
}

policy "elb-ensure-multi-az-configuration-classic-load-balancer" {
  source = "./policies/elb-ensure-multi-az-configuration-classic-load-balancer.sentinel"
  enforcement_level = "advisory"
}

policy "elb-ensure-valid-desync-mitigation-mode-application-load-balancer" {
  source = "./policies/elb-ensure-valid-desync-mitigation-mode.sentinel"
  enforcement_level = "advisory"
  params = {
    lb_type = "application"
  }
}

policy "elb-ensure-valid-desync-mitigation-mode-classic-load-balancer" {
  source = "./policies/elb-ensure-valid-desync-mitigation-mode.sentinel"
  enforcement_level = "advisory"
  params = {
    lb_type = "classic"
  }
}

policy "rds-instance-should-be-private" {
  source = "./policies/rds-instance-should-be-private.sentinel"
  enforcement_level = "advisory"
}

policy "rds-encryption-at-rest-enabled" {
  source = "./policies/rds-encryption-at-rest-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "rds-cluster-and-db-snapshot-encrypted" {
  source = "./policies/rds-cluster-and-db-snapshot-encrypted.sentinel"
  enforcement_level = "advisory"
}

policy "rds-ensure-monitoring-configured" {
  source = "./policies/rds-ensure-monitoring-configured.sentinel"
  enforcement_level = "advisory"
}

policy "rds-ensure-multi-az-configuration" {
  source = "./policies/rds-ensure-multi-az-configuration.sentinel"
  enforcement_level = "advisory"
}

policy "rds-ensure-cloudwatch-logs-enabled" {
  source = "./policies/rds-ensure-cloudwatch-logs-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "rds-ensure-cluster-deletion-protection-enabled" {
  source = "./policies/rds-ensure-deletion-protection-enabled.sentinel"
  enforcement_level = "advisory"
  params = {
    resource_type = "aws_rds_cluster"
  }
}

policy "rds-ensure-db-instance-deletion-protection-enabled" {
  source = "./policies/rds-ensure-deletion-protection-enabled.sentinel"
  enforcement_level = "advisory"
  params = {
    resource_type = "aws_db_instance"
  }
}

policy "rds-ensure-cluster-iam-auth-configured" {
  source = "./policies/rds-ensure-cluster-and-db-instance-iam-auth-configured.sentinel"
  enforcement_level = "advisory"
  params = {
    resource_type = "aws_rds_cluster"
  }
}

policy "rds-ensure-db-instance-iam-auth-configured" {
  source            = "./policies/rds-ensure-cluster-and-db-instance-iam-auth-configured.sentinel"
  enforcement_level = "advisory"
  params = {
    resource_type = "aws_db_instance"
  }
}

policy "rds-ensure-automatic-backups-enabled" {
  source = "./policies/rds-ensure-automatic-backups-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "rds-ensure-automatic-minor-version-upgrades-enabled" {
  source = "./policies/rds-ensure-automatic-minor-version-upgrades-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "rds-ensure-cluster-backtracking-enabled" {
  source = "./policies/rds-ensure-cluster-backtracking-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticache-redis-replication-group-redis-auth-enabled" {
  source = "./policies/elasticache-redis-replication-group-redis-auth-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticache-redis-cluster-non-default-subnet-enabled" {
  source = "./policies/elasticache-redis-cluster-non-default-subnet-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "dynamo-db-tables-point-in-time-recovery-enabled" {
  source = "./policies/dynamo-db-tables-point-in-time-recovery-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "docdb-cluster-backup-retention-check" {
  source = "./policies/docdb-cluster-backup-retention-check.sentinel"
  enforcement_level = "advisory"
}

policy "docdb-cluster-deletion-protection-enabled" {
  source = "./policies/docdb-cluster-deletion-protection-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "docdb-cluster-storage-encrypted" {
  source = "./policies/docdb-cluster-storage-encrypted.sentinel"
  enforcement_level = "advisory"
}

policy "docdb-cluster-audit-logging-enabled" {
  source = "./policies/docdb-cluster-audit-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "dynamo-db-accelerator-clusters-encryption-at-rest-enabled" {
  source = "./policies/dynamo-db-accelerator-clusters-encryption-at-rest-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "dynamo-db-tables-delete-protection-enabled" {
  source = "./policies/dynamo-db-tables-delete-protection-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticbeanstalk-enhanced-health-reporting-enabled" {
  source = "./policies/elasticbeanstalk-enhanced-health-reporting-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "dynamo-db-tables-scales-capacity-with-demand" {
  source = "./policies/dynamo-db-tables-scales-capacity-with-demand.sentinel"
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
  source = "./policies/elasticbeanstalk-managed-platform-updates-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticbeanstalk-cloudwatch-log-streaming-enabled" {
  source = "./policies/elasticbeanstalk-cloudwatch-log-streaming-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "emr-block-public-access-enabled" {
  source = "./policies/emr-block-public-access-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "neptune-cluster-encryption-at-rest-enabled" {
 source = "./policies/neptune-cluster-encryption-at-rest-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "neptune-cluster-audit-logs-publishing-enabled" {
 source = "./policies/neptune-cluster-audit-logs-publishing-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "neptune-cluster-deletion-protection-enabled" {
 source = "./policies/neptune-cluster-deletion-protection-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "neptune-cluster-automated-backups-enabled" {
 source = "./policies/neptune-cluster-automated-backups-enabled.sentinel"
  enforcement_level = "advisory"
  params = {
      backup_retention_period = 7
  }
}

policy "neptune-cluster-db-auth-enabled" {
 source = "./policies/neptune-cluster-db-auth-enabled.sentinel"
 enforcement_level = "advisory"
}

policy "neptune-cluster-copy-tags-to-snapshot-enabled" {
 source = "./policies/neptune-cluster-copy-tags-to-snapshot-enabled.sentinel"
 enforcement_level = "advisory"
}