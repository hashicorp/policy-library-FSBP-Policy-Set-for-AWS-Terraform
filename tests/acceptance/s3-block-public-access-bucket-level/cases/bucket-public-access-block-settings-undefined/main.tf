provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "this" {
  bucket = "test-bucket"
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.bucket
}