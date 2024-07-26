resource "aws_elb" "this" {
  listener {
    lb_port           = 5050
    lb_protocol       = "HTTPS"
    instance_port     = 7070
    instance_protocol = "HTTP"
  }

  access_logs {
    bucket  = "foo"
    enabled = false
  }
}

resource "aws_lb" "this" {
  access_logs {
    bucket  = "foo"
    enabled = false
  }

  subnets = ["subnet-id-1"]
}