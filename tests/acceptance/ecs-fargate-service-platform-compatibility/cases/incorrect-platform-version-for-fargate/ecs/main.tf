resource "aws_ecs_service" "name" {
  name = "test-service"

  launch_type = "FARGATE"

  platform_version = "1.2.0"
}