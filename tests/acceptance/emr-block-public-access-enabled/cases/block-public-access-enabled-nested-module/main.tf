provider "aws" {
  region = "us-west-2"
}

module "emr_block_public_access_configuration" {
  source = "./emr-block-public-access-configuration"
}