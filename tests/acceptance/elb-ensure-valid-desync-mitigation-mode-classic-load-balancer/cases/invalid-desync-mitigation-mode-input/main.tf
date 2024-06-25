provider "aws" {
  region = "us-west-2"
}

module "elb" {
  source = "./elb"
}