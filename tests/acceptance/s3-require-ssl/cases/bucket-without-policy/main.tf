resource "aws_s3_bucket" "this" {
  bucket = "test-bucket"
}

provider "aws" {
  region = "us-west-2"
}