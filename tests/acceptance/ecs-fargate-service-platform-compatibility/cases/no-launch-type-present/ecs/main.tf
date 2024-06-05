resource "aws_ecs_service" "name" {
  name = "test-service"

  platform_version = "1.2.4"
}