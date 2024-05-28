provider "aws" {
  region = "us-west-2"
}

resource "aws_elasticache_replication_group" "example" {
  automatic_failover_enabled  = true
  preferred_cache_cluster_azs = ["us-west-2a", "us-west-2b"]
  replication_group_id        = "tf-rep-group-1"
  description                 = "example description"
  node_type                   = "cache.m4.large"
  num_cache_clusters          = 2
  parameter_group_name        = "default.redis3.2"
  port                        = 6379
  auto_minor_version_upgrade  = false
}
