terraform {
  cloud {
    workspaces {
      name = "rds-ensure-db-instance-deletion-protection-enabled"
    }
  }
}