resource "aws_lb" "this" {
  load_balancer_type = "network"
  subnets            = ["10.0.0.1/16"]
}