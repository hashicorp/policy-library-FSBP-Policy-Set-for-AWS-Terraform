variable "ssl_cert_arn" {
  description = "ARN of the SSL cert"
  type        = string
}

resource "aws_elb" "this" {
  listener {
    instance_port     = 5050
    instance_protocol = "http"
    lb_port           = 9090
    lb_protocol       = "ssl"

    ssl_certificate_id = var.ssl_cert_arn
  }
}