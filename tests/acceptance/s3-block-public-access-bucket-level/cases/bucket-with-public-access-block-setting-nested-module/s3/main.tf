resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
}

variable "bucket_name" {
  type = string
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.bucket

  ignore_public_acls      = true
  block_public_acls       = true
  block_public_policy     = true
  restrict_public_buckets = true
}