provider "aws" {
  region = "us-west-2"
}

module "dax" {
  source = "./dax"
}