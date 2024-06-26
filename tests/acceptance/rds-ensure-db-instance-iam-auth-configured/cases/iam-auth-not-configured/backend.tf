terraform {
  cloud {
    workspaces {
      name = "rds-ensure-db-instance-iam-auth-configured"
    }
  }
}