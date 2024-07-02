terraform {
  cloud {
    workspaces {
      name = "elb-ensure-http-request-redirection"
    }
  }
}