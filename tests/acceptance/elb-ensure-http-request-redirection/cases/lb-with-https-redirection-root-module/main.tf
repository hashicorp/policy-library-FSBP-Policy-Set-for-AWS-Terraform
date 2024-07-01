provider "aws" {
  region = "us-west-2"
}

resource "aws_lb" "this" {
  load_balancer_type = "application"

  subnets = ["subnet-01"]
}

resource "aws_lb_listener" "this" {
  load_balancer_arn = aws_lb.this.arn

  protocol = "HTTP"
  port     = 80

  default_action {
    type = "forward"

    forward {
      target_group {
        arn = "arn:aws:acm:us-west-2:123456789012:certificate/abcdefg-1234-5678-abcd-1234abcdefg"
      }
    }
  }
}

resource "aws_lb_listener_rule" "this" {
  listener_arn = aws_lb_listener.this.arn

  condition {
    host_header {
      values = ["example.com"]
    }
  }

  action {
    type = "redirect"

    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }
}