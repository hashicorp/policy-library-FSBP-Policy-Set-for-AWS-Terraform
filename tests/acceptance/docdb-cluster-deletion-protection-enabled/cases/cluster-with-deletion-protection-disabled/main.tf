provider "aws" {
  region = "us-west-2"
}

resource "aws_docdb_cluster" "docdb" {
  cluster_identifier      = "my-docdb-cluster"
  engine                  = "docdb"
  master_username         = "db-user"
  master_password         = "12345678"
  backup_retention_period = 7
  preferred_backup_window = "07:00-09:00"
  skip_final_snapshot     = true
  storage_encrypted       = true
  deletion_protection     = false
}
