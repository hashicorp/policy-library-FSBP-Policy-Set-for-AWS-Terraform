provider "aws" {
  region = "us-west-2"
}

module "dynamo_db" {
  source = "./dynamo-db"
}