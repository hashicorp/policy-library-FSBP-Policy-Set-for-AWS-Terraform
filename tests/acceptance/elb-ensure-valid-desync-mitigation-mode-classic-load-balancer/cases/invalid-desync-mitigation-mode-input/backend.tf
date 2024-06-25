terraform {
  cloud {
    workspaces {
      name = "elb-ensure-valid-desync-mitigation-mode-classic-load-balancer"
    }
  }
}