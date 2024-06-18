terraform {
  cloud {
    workspaces {
      name = "rds-should-be-configured-with-multi-az"
    }
  }
}