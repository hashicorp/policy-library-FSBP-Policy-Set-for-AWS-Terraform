terraform {
  cloud {
    workspaces {
      name = "rds-ensure-cloudwatch-logs-enabled"
    }
  }
}