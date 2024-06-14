terraform {
  cloud {
    workspaces {
      name = "ecs-non-privileged-container-definitions"
    }
  }
}