resource "aws_ecs_cluster" "this" {
  name = "test-cluster"

  setting {
    name = "containerInsights"
    value = "enabled"
  }
}