resource "aws_s3_account_public_access_block" "setting" {
  ignore_public_acls      = true
  restrict_public_buckets = true
  block_public_acls       = true
  block_public_policy     = true
}

provider "aws" {
  region = "us-west-2"
}