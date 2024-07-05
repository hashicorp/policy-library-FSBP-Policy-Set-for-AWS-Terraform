resource "aws_elb" "this" {
  listener {
    lb_port           = 5050
    lb_protocol       = "HTTPS"
    instance_port     = 7070
    instance_protocol = "HTTP"
  }
}

resource "aws_lb" "this" {
  subnets = ["subnet-id-1"]
}