provider "aws" {
  region = "us-west-2"
}

module "lb" {
  source = "./lb"
}