resource "aws_lb" "this" {
  load_balancer_type     = "network"
  desync_mitigation_mode = "monitor"

  subnets = ["subnet-id-1"]
}