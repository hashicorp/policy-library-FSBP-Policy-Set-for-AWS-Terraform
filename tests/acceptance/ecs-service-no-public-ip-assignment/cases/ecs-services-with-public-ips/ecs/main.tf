resource "aws_ecs_service" "this" {
  name = "test-service"

  network_configuration {
    subnets          = ["10.0.0.2/16"]
    assign_public_ip = true
  }
}