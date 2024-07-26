terraform {
  cloud {
    workspaces {
      name = "elb-ensure-ssl-listener-predefined-security-policy"
    }
  }
}