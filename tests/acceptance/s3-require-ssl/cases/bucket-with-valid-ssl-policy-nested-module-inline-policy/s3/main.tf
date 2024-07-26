variable "bucket_name" {
  type = string
}

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_policy" "this" {
  bucket = aws_s3_bucket.this.bucket

  policy = <<POLICY
{
  "Id": "ExamplePolicy",
  "Version": "2012-10-17",
  "Statement": [
      {
          "Sid": "AllowSSLRequestsOnly",
          "Action": "s3:*",
          "Effect": "Deny",
          "Resource": [
              "arn:aws:s3:::awsexamplebucket",
              "arn:aws:s3:::awsexamplebucket/*"
          ],
          "Condition": {
              "Bool": {
                "aws:SecureTransport": "false"
              }
          },
          "Principal": "*"
      }
  ]
}
POLICY
}