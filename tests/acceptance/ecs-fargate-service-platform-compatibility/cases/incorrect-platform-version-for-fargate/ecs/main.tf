resource "aws_ecs_service" "name" {
  name = "test-service"

  launch_type = "fargate"

  platform_version = "1.2.3"
}