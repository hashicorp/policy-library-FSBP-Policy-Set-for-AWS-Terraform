terraform {
  cloud {
    workspaces {
      name = "elb-drop-invalid-http-headers"
    }
  }
}