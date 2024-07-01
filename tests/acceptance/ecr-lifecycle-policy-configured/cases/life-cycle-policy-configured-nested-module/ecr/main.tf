resource "aws_ecr_repository" "this" {
  name = "test-repo"
}

resource "aws_ecr_lifecycle_policy" "this" {
  repository = aws_ecr_repository.this.arn

  policy = <<EOF
{
    "rules": [
        {
            "rulePriority": 1,
            "description": "Expire images older than 14 days",
            "selection": {
                "tagStatus": "untagged",
                "countType": "sinceImagePushed",
                "countUnit": "days",
                "countNumber": 14
            },
            "action": {
                "type": "expire"
            }
        }
    ]
}
EOF
}