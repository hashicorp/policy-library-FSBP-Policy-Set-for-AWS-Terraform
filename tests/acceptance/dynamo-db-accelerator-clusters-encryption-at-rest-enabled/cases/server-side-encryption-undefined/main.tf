provider "aws" {
  region = "us-west-2"
}

resource "aws_dax_cluster" "example" {
  cluster_name         = "example-dax-cluster"
  node_type            = "dax.r4.large"
  replication_factor   = 3
  iam_role_arn         = aws_iam_role.example.arn
  parameter_group_name = "default.dax1.0"

  tags = {
    Name = "example-dax-cluster"
  }
}

resource "aws_iam_role" "example" {
  name = "example-dax-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "dax.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "example" {
  role       = aws_iam_role.example.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonDAXServiceRolePolicy"
}
