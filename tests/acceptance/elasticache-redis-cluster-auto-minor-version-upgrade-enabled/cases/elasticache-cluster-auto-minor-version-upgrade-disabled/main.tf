provider "aws" {
  region = "us-west-2"
}

resource "aws_elasticache_cluster" "example" {
  cluster_id                 = "cluster-example"
  engine                     = "redis"
  node_type                  = "cache.m4.large"
  num_cache_nodes            = 1
  parameter_group_name       = "default.redis3.2"
  engine_version             = "3.2.10"
  port                       = 6379
  snapshot_retention_limit   = 0
  auto_minor_version_upgrade = false
}
