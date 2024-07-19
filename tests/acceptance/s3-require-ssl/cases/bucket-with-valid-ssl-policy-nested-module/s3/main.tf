variable "bucket_name" {
  type = string
}

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_policy" "this" {
  bucket = aws_s3_bucket.this.bucket

  policy = data.aws_iam_policy_document.this.json
}

data "aws_iam_policy_document" "this" {
  statement {
    sid       = "test-sid-1"
    actions   = ["s3:*"]
    resources = ["*"]
    effect    = "Deny"
    condition {
      test = "Bool"
      values = [
        "false"
      ]
      variable = "aws:SecureTransport"
    }
  }

  statement {
    sid       = "test-sid-2"
    actions   = ["ecs:*"]
    resources = ["*"]
    effect    = "Allow"
  }
}