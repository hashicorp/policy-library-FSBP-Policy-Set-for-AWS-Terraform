terraform {
  cloud {
    workspaces {
      name = "rds-ensure-automatic-minor-version-upgrades-enabled"
    }
  }
}