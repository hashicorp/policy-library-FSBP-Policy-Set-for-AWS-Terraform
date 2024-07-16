resource "aws_elb" "this" {
  listener {
    instance_port     = 443
    instance_protocol = "http"
    lb_port           = 443
    lb_protocol       = "https"
  }
}

resource "aws_load_balancer_policy" "this" {
  load_balancer_name = aws_elb.this.name
  policy_name        = "security-policy"
  policy_type_name   = "ELBSecurityPolicy-TLS-1-2-2017-01"
}

resource "aws_load_balancer_listener_policy" "this" {
  load_balancer_name = aws_elb.this.name
  load_balancer_port = 443

  policy_names = [
    aws_load_balancer_policy.this.policy_name,
  ]
}