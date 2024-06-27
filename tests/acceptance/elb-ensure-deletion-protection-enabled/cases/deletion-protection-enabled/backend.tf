terraform {
  cloud {
    workspaces {
      name = "elb-ensure-deletion-protection-enabled"
    }
  }
}