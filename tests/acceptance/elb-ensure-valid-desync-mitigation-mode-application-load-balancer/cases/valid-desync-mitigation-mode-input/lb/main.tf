resource "aws_lb" "this" {
  desync_mitigation_mode = "strictest"

  subnets = ["subnet-id-1"]
}