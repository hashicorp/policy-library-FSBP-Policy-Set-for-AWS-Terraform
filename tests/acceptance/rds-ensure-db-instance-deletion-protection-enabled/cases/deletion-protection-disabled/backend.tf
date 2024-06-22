terraform {
  cloud {
    workspaces {
      name = "rds-ensure-deletion-protection-enabled"
    }
  }
}