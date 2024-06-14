terraform {
  cloud {
    workspaces {
      name = "ecs-service-no-public-ip-assignment"
    }
  }
}