import "module" "report" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/report/report.sentinel"
}

// Replace the source with the appropriate plugin binary
// based on the environment where you run policies.
import "plugin" "tfresources" {
  source = "./plugins/linux/amd64/sentinel-plugin-tfresources"
}

policy "ecs-task-definition-secure-networking-mode-and-user-definitions" {
  source = "./policies/ecs-task-definition-secure-networking-mode-and-user-definitions.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-task-definition-read-only-root-file-system-access" {
  source = "./policies/ecs-task-definition-read-only-root-file-system-access.sentinel"
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

policy "elasticache-redis-cluster-auto-failover-enabled" {
  source = "./policies/elasticache-redis-cluster-auto-failover-enabled.sentinel"
  enforcement_level = "advisory"
}
