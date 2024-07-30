provider "aws" {
  region = "us-west-2"
}

resource "aws_rds_cluster" "postgresql" {
  cluster_identifier      = "aurora-cluster-demo"
  engine                  = "aurora-postgresql"
  availability_zones      = ["us-west-2a"]
  database_name           = "mydb"
  master_username         = "foo"
  master_password         = "somesecertpassword"
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
}