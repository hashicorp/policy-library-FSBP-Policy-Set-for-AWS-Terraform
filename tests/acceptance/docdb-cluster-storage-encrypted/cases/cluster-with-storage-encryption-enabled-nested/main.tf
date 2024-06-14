provider "aws" {
  region = "us-west-2"
}

module "docdb_cluster" {
  source                     = "./docdb_storage_encryption_enabled"
  storage_encryption_enabled = true
}
