terraform {
  required_providers {
    aws = {
      version = " ~> 3.0"
      source  = "registry.terraform.io/hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_sagemaker_notebook_instance" "simple_notebook_instance" {
  name                   = "my-notebook-instance"
  role_arn               = aws_iam_role.test_role.arn
  subnet_id              = ""
  direct_internet_access = "Disabled"
  instance_type          = "ml.t2.medium"
  tags = {
    Name = "foo"
  }
}

resource "aws_iam_role" "test_role" {
  name = "test_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}
