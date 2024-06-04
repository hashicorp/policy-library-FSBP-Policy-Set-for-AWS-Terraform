provider "aws" {
  region = "us-west-2"
}

module "elasticache_cluster" {
  source                   = "./elasticache_cluster"
  cluster_id               = "cluster-example"
  snapshot_retention_limit = 7
  subnet_group_name        = aws_elasticache_subnet_group.custom-subnet-group.name
}

module "elasticache_replication_group" {
  source                   = "./elasticache_replication_group"
  replication_group_id     = "tf-rep-group-1"
  snapshot_retention_limit = 7
  subnet_group_name        = aws_elasticache_subnet_group.custom-subnet-group.name
}

resource "aws_elasticache_subnet_group" "custom-subnet-group" {
  name        = "custom-subnet-group"
  subnet_ids  = ["subnet-12345678", "subnet-87654321"]
  description = "Custom subnet group for ElastiCache"
}