resource "aws_ecs_task_definition" "service" {
  family       = "service"
  network_mode = "awsvpc"
  container_definitions = jsonencode([
    {
      name                   = "first"
      user                   = "5996"
      privileged             = true
      image                  = "service-first"
      readOnlyRootFileSystem = true
      cpu                    = 10
      memory                 = 512
      essential              = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    },
    {
      name                   = "second"
      image                  = "service-second"
      cpu                    = 10
      memory                 = 256
      readOnlyRootFileSystem = true
      essential              = true
      privileged             = true
      user                   = "4885"
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

resource "aws_ecs_task_definition" "service_2" {
  family = "service"
  container_definitions = jsonencode([
    {
      name                   = "first"
      user                   = "5996"
      privileged             = true
      image                  = "service-first"
      readOnlyRootFileSystem = true
      cpu                    = 10
      memory                 = 512
      essential              = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    },
    {
      name                   = "second"
      image                  = "service-second"
      cpu                    = 10
      memory                 = 256
      essential              = true
      readOnlyRootFileSystem = true
      privileged             = true
      user                   = "4885"
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