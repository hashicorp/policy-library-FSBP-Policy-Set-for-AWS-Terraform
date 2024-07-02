resource "aws_docdb_cluster" "docdb" {
  cluster_identifier              = "my-docdb-cluster"
  engine                          = "docdb"
  master_username                 = "db-user"
  master_password                 = "master-password"
  backup_retention_period         = 2
  preferred_backup_window         = "07:00-09:00"
  skip_final_snapshot             = true
  storage_encrypted               = true
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
}
