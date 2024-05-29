provider "aws" {
  region = "us-west-2"
}

resource "aws_ecs_task_definition" "service" {
  family       = "service"
  network_mode = "host"
  container_definitions = jsonencode([
    {
      name       = "first"
      image      = "service-first"
      cpu        = 10
      memory     = 512
      essential  = true
      privileged = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    },
    {
      name       = "second"
      image      = "service-second"
      cpu        = 10
      memory     = 256
      essential  = true
      privileged = false
      user       = ""
      portMappings = [
        {
          containerPort = 443
          hostPort      = 443
        }
      ]
    }
  ])

  volume {
    name      = "service-storage"
    host_path = "/ecs/service-storage"
  }

  placement_constraints {
    type       = "memberOf"
    expression = "attribute:ecs.availability-zone in [us-west-2a, us-west-2b]"
  }
}