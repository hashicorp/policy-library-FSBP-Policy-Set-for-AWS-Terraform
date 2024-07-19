resource "aws_s3_bucket" "this" {
  bucket = "test-bucket"
}

resource "aws_s3_bucket_policy" "this" {
  bucket = aws_s3_bucket.this.bucket

  policy = data.aws_iam_policy_document.this.json
}

data "aws_iam_policy_document" "this" {
  statement {
    sid       = "test-sid-1"
    actions   = ["*"]
    resources = ["*"]
    effect    = "Deny"
  }

  statement {
    sid       = "test-sid-2"
    actions   = ["*"]
    resources = ["*"]
    effect    = "Allow"
  }
}

provider "aws" {
  region = "us-west-2"
}