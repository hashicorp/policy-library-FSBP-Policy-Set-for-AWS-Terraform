name = "elasticache-redis-cluster-auto-backup-enabled"

disabled = true

case "Elasticache auto backup enabled in root module" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "Elasticache auto backup enabled in nested module" {
  path = "cases/all-resources-compliant-nested-modules"
  expectation {
    result = true
  }
}

case "Elasticache backup disabled for resource aws_elasticache_cluster" {
  path = "cases/elasticache-cluster-auto-backup-disabled"
  expectation {
    result = false
  }
}

case "Elasticache backup disabled for resource aws_elasticache_replication_group" {
  path = "cases/elasticache-replication-group-auto-backup-disabled"
  expectation {
    result = false
  }
}
