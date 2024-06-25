resource "aws_lb" "this" {
  enable_deletion_protection = false

  subnets = ["subnet-id-1"]
}