provider "aws" {
  region = "us-west-2"
}

module "docdb_cluster" {
  source                      = "./docdb-deletion-protection-enabled"
  deletion_protection_enabled = true
}
