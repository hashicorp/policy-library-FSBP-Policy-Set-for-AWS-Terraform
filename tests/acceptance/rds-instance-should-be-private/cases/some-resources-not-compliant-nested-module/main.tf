provider "aws" {
  region = "us-west-2"
}

module "rds-1" {
  source              = "./rds"
  publicly_accessible = true
}

module "rds-2" {
  source              = "./rds"
  publicly_accessible = false
}

