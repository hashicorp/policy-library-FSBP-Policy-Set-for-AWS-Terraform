provider "aws" {
  region = "us-west-2"
}


module "elasticache_replication_group" {
  source                   = "./elasticache-redis-replication-group-encryption-at-rest-enabled"
  replication_group_id     = "tf-rep-group-1"
  snapshot_retention_limit = 7
}
