provider "aws" {
  region = "us-west-2"
}

resource "aws_redshift_cluster" "rscluster" {
  cluster_identifier                  = "tf-redshift-cluster"
  database_name                       = "newdb"
  master_username                     = "exampleuser"
  master_password                     = "Newpass12345678"
  node_type                           = "dc1.large"
  cluster_type                        = "single-node"
  encrypted                           = false
  publicly_accessible                 = true
  automated_snapshot_retention_period = 10
  allow_version_upgrade               = false
}
