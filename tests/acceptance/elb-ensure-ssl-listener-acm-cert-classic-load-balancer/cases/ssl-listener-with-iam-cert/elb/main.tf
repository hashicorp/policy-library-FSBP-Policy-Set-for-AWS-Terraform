resource "aws_elb" "this" {
  listener {
    instance_port     = 5050
    instance_protocol = "http"
    lb_port           = 9090
    lb_protocol       = "ssl"

    ssl_certificate_id = aws_iam_server_certificate.this.arn
  }
}

resource "aws_iam_server_certificate" "this" {
  private_key      = "foo"
  certificate_body = "bar"
}