provider "aws" {
  region = "us-east-1"
}

module "dms_replication_instances" {
  source                       = "./dms_replication_instances"
  publicly_accessible_variable = false
}
