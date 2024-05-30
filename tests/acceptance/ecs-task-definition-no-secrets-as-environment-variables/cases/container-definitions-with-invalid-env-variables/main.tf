provider "aws" {
  region = "us-west-2"
}

resource "aws_ecs_task_definition" "service" {
  family       = "service"
  network_mode = "host"
  container_definitions = jsonencode([
    {
      name                   = "first"
      user                   = "5996"
      image                  = "service-first"
      cpu                    = 10
      memory                 = 512
      readOnlyRootFileSystem = true
      essential              = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
      environment = [
        {
          name  = "foo",
          value = "bar"
        },
        {
          name  = "AWS_ACCESS_KEY_ID"
          value = "foobase"
        }
      ]
    },
    {
      name       = "second"
      image      = "service-second"
      cpu        = 10
      memory     = 256
      essential  = true
      privileged = true
      user       = "4885"
      portMappings = [
        {
          containerPort = 443
          hostPort      = 443
        }
      ]
      environment = [
        {
          name  = "foo",
          value = "bar"
        },
        {
          name  = "AWS_SECRET_ACCESS_KEY"
          value = "foobase"
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
  family       = "service"
  network_mode = "host"
  container_definitions = jsonencode([
    {
      name                   = "first"
      user                   = "5996"
      image                  = "service-first"
      cpu                    = 10
      memory                 = 512
      readOnlyRootFileSystem = true
      essential              = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
      environment = [
        {
          name  = "foo",
          value = "bar"
        },
        {
          name  = "ECS_ENGINE_AUTH_DATA"
          value = "foobase"
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