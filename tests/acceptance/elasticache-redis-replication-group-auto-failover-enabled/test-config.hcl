name = "elasticache-redis-replication-group-auto-failover-enabled"

disabled = true

case "Elasticache auto failover enabled in root module" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "Elasticache auto failover enabled in nested module" {
  path = "cases/all-resources-compliant-nested-modules"
  expectation {
    result = true
  }
}

case "Elasticache failover disabled for resource aws_elasticache_replication_group" {
  path = "cases/elasticache-replication-group-auto-failover-disabled"
  expectation {
    result = false
  }
}
