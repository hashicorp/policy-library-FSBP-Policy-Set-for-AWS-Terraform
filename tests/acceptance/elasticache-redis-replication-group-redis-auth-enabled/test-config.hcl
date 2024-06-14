name = "elasticache-redis-replication-group-redis-auth-enabled"

disabled = false

case "Elasticache redis auth enabled in root module" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "Elasticache redis auth enabled in nested module" {
  path = "cases/all-resources-compliant-nested-modules"
  expectation {
    result = true
  }
}

case "Elasticache redis auth disabled for resource aws_elasticache_replication_group" {
  path = "cases/elasticache-redis-replication-group-redis-auth-disabled"
  expectation {
    result = false
  }
}

case "Elasticache redis auth engine version undefined for resource aws_elasticache_replication_group" {
  path = "cases/elasticache-redis-replication-group-redis-auth-engine-version-undefined"
  expectation {
    result = true
  }
}
