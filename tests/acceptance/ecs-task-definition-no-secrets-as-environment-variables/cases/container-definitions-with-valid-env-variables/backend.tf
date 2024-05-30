terraform {
  cloud {
    workspaces {
      name = "ecs-task-definition-no-secrets-as-environment-variables"
    }
  }
}