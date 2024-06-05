resource "aws_ecs_service" "name" {
  name = "test-service"

  launch_type = "FARGATE"
}