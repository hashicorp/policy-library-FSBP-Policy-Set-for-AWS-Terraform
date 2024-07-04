provider "aws" {
  region = "us-west-2"
}

module "elb" {
  source = "./elb"

  ssl_cert_arn = aws_acm_certificate.this.arn
}

resource "aws_acm_certificate" "this" {
  domain_name = "foo.com"
}