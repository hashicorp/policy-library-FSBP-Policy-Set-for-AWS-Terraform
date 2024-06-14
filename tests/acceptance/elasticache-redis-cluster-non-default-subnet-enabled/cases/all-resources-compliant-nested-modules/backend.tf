terraform {
  cloud {
    workspaces {
      name = "elasticache-redis-cluster-non-default-subnet-enabled"
    }
  }
}