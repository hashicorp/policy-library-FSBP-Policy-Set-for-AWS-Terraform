terraform {
  cloud {
    workspaces {
      name = "dynamo-db-tables-point-in-time-recovery-enabled"
    }
  }
}