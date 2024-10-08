provider "aws" {
  region = "us-west-2"
}

module "redshift_cluster" {
  source             = "./redshift-cluster"
  encrypted_variable = true
}
