resource "aws_ecr_repository" "name" {
  name = "test-repo"

  image_scanning_configuration {
    scan_on_push = true
  }
}