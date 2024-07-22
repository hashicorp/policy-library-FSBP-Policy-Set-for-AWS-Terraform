provider "aws" {
  region = "us-west-2"
}

resource "aws_neptune_cluster" "default" {
  cluster_identifier                  = "neptune-cluster-demo"
  engine                              = "neptune"
  backup_retention_period             = 5
  preferred_backup_window             = "07:00-09:00"
  skip_final_snapshot                 = true
  iam_database_authentication_enabled = true
  apply_immediately                   = true
  storage_encrypted                   = false
  snapshot_identifier                 = aws_neptune_cluster_snapshot.example.db_cluster_snapshot_arn
}

resource "aws_neptune_cluster" "original" {
  cluster_identifier           = "my-neptune-cluster"
  engine                       = "neptune"
  backup_retention_period      = 5
  preferred_backup_window      = "07:00-09:00"
  preferred_maintenance_window = "mon:03:00-mon:04:00"
}
resource "aws_neptune_cluster_snapshot" "example" {
  db_cluster_identifier          = aws_neptune_cluster.original.id
  db_cluster_snapshot_identifier = "resourcetestsnapshot1234"
}