resource "aws_elasticache_replication_group" "example" {
  automatic_failover_enabled  = true
  at_rest_encryption_enabled  = true
  preferred_cache_cluster_azs = ["us-west-2a", "us-west-2b"]
  replication_group_id        = var.replication_group_id
  description                 = "example description"
  node_type                   = "cache.m4.large"
  num_cache_clusters          = 2
  parameter_group_name        = "default.redis3.2"
  port                        = 6379
  snapshot_retention_limit    = var.snapshot_retention_limit
}