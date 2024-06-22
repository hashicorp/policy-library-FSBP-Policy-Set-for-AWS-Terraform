terraform {
  cloud {
    workspaces {
      name = "rds-ensure-cluster-deletion-protection-enabled"
    }
  }
}