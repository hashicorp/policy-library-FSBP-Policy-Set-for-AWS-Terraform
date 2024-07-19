provider "aws" {
  region = "us-west-2"
}

module "neptune-cluster" {
  source = "./neptune-cluster"
}