provider "aws" {
  region = "us-west-2"
}

module "firewall" {
  source = "./firewall"
}

resource "aws_networkfirewall_logging_configuration" "example" {
  firewall_arn = module.firewall.firewall_arn
  logging_configuration {
    log_destination_config {
      log_destination = {
        bucketName = aws_s3_bucket.example.bucket
        prefix     = "/example"
      }
      log_destination_type = "S3"
      log_type             = "FLOW"
    }
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}