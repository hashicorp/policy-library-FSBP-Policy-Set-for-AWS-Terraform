resource "aws_elb" "this" {
  listener {
    instance_port     = 5050
    instance_protocol = "http"
    lb_port           = 9090
    lb_protocol       = "ssl"

    ssl_certificate_id = aws_acm_certificate.this.arn
  }
}

resource "aws_acm_certificate" "this" {
  domain_name = "foo.com"
}