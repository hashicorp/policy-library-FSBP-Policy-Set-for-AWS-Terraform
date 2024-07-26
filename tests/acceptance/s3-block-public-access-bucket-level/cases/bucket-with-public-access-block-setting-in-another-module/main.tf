module "s3" {
  source = "./s3"

  bucket_name = "test-bucket"
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = module.s3.bucket_name

  ignore_public_acls      = true
  block_public_acls       = true
  block_public_policy     = true
  restrict_public_buckets = true
}

provider "aws" {
  region = "us-west-2"
}