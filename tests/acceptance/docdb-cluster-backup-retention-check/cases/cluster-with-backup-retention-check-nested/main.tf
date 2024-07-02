provider "aws" {
  region = "us-west-2"
}

module "docdb_cluster" {
  source                  = "./cluster-backup-retention-check"
  backup_retention_period = 20
}
