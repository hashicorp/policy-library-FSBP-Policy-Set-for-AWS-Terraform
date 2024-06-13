resource "aws_ecr_repository" "name" {
  name                 = "foo"
  image_tag_mutability = "IMMUTABLE"
}