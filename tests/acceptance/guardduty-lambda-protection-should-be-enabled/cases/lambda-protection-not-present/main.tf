provider "aws" {
  region = "us-west-2"
}

resource "aws_guardduty_detector" "MyDetector" {
  enable = false

  datasources {
    s3_logs {
      enable = true
    }
    kubernetes {
      audit_logs {
        enable = true
      }
    }
  }
}