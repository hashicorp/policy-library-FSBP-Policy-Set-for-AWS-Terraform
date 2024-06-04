provider "aws" {
  region = "us-west-2"
}

module "ecs" {
  source = "./ecs"
}