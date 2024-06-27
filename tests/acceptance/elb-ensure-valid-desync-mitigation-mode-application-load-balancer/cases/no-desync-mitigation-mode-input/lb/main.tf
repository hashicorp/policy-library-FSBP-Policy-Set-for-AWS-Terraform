resource "aws_lb" "this" {
  load_balancer_type = "application"

  subnets = ["subnet-id-1"]
}