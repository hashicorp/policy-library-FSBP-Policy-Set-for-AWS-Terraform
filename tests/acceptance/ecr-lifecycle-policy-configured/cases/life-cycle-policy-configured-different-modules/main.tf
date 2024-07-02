provider "aws" {
  region = "us-west-2"
}

module "ecr" {
  source = "./ecr"
}

resource "aws_ecr_lifecycle_policy" "this" {
  depends_on = [module.ecr]

  repository = module.ecr.repo_arn

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