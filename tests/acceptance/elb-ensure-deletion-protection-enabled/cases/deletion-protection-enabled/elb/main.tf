resource "aws_lb" "this" {
  enable_deletion_protection = true

  subnets = ["subnet-id-1"]
}