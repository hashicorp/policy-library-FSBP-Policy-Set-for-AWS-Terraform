name = "elasticache-redis-cluster-auto-minor-version-upgrade-enabled"

disabled = true

case "Elasticache auto minor version upgrade enabled in root module" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "Elasticache auto minor version upgrade enabled in nested module" {
  path = "cases/all-resources-compliant-nested-modules"
  expectation {
    result = true
  }
}

case "Elasticache minor version upgrade disabled for resource aws_elasticache_cluster" {
  path = "cases/elasticache-cluster-auto-minor-version-upgrade-disabled"
  expectation {
    result = false
  }
}

case "Elasticache minor version upgrade disabled for resource aws_elasticache_replication_group" {
  path = "cases/elasticache-replication-group-auto-minor-version-upgrade-disabled"
  expectation {
    result = false
  }
}
