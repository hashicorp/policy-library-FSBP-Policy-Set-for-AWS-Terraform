import "module" "report" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/report/report.sentinel"
}

// Replace the source with the appropriate plugin binary
// based on the environment where you run policies.
import "plugin" "tfresources" {
  source = "./plugins/linux/amd64/sentinel-plugin-tfresources"
}

policy "ecs-cluster-enable-container-insights" {
  source = "./policies/ecs-cluster-enable-container-insights.sentinel"
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

policy "ecs-task-definition-no-secrets-as-environment-variables" {
  source = "./policies/ecs-task-definition-no-secrets-as-environment-variables.sentinel"
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