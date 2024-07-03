provider "aws" {
  region = "us-west-2"
}

module "ecr" {
  source = "./ecr"
}