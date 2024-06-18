provider "aws" {
  region = "us-west-2"
}

module "rds-1" {
  source              = "./rds"
}