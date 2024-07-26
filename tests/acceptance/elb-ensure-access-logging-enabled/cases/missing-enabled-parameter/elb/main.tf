resource "aws_elb" "this" {
  listener {
    lb_port           = 5050
    lb_protocol       = "HTTPS"
    instance_port     = 7070
    instance_protocol = "HTTP"
  }

  access_logs {
    bucket = "foo"
  }
}

resource "aws_lb" "this" {
  access_logs {
    bucket = "foo"
  }

  subnets = ["subnet-id-1"]
}

resource "aws_lb" "nlb" {
  load_balancer_type = "network"
  subnets            = ["subnet-id-1"]
}