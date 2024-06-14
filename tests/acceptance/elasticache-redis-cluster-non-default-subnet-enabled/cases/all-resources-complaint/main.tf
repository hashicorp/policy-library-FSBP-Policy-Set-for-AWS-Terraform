provider "aws" {
  region = "us-west-2"
}

resource "aws_elasticache_cluster" "example" {
  cluster_id           = "cluster-example"
  replication_group_id = aws_elasticache_replication_group.example.replication_group_id
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
  snapshot_retention_limit    = 7
  subnet_group_name           = aws_elasticache_subnet_group.custom-subnet-group.name
}

resource "aws_elasticache_subnet_group" "custom-subnet-group" {
  name        = "custom-subnet-group"
  subnet_ids  = ["subnet-12345678", "subnet-87654321"]
  description = "Custom subnet group for ElastiCache"
}