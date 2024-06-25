name = "elasticache-redis-cluster-non-default-subnet-enabled"

disabled = false

case "Elasticache non default subnet enabled in root module" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "Elasticache non default subnet enabled in nested module" {
  path = "cases/all-resources-compliant-nested-modules"
  expectation {
    result = true
  }
}

case "Elasticache default subnet enabled for resource aws_elasticache_cluster" {
  path = "cases/elasticache-cluster-default-subnet-enabled"
  expectation {
    result = false
  }
}

case "Elasticache default subnet enabled for resource aws_elasticache_replication_group" {
  path = "cases/elasticache-replication-group-default-subnet-enabled"
  expectation {
    result = false
  }
}
