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
    malware_protection {
      scan_ec2_instance_with_findings {
        ebs_volumes {
          enable = false
        }
      }
    }
  }
}