resource "aws_s3_account_public_access_block" "setting" {
  ignore_public_acls      = false
  restrict_public_buckets = true
  block_public_acls       = false
  block_public_policy     = true
}

provider "aws" {
  region = "us-west-2"
}