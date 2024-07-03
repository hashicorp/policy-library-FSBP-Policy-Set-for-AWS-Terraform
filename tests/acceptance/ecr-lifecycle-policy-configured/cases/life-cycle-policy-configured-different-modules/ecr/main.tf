resource "aws_ecr_repository" "this" {
  name = "test-repo"
}

output "repo_arn" {
  value = aws_ecr_repository.this.arn
}