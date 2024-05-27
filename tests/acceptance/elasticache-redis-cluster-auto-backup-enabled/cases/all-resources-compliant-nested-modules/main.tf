provider "aws" {
  region = "us-west-2"
}

module "elasticache_cluster" {
  source                   = "./elasticache_cluster_backup_enabled"
  cluster_id               = "cluster-example"
  snapshot_retention_limit = 7
}

module "elasticache_replication_group" {
  source                   = "./elasticache_replication_group_backup_enabled"
  replication_group_id     = "tf-rep-group-1"
  snapshot_retention_limit = 7
}
