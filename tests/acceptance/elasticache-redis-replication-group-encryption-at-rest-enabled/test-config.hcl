name = "elasticache-redis-replication-group-encryption-at-rest-enabled"

disabled = true

case "Elasticache redis replication group encryption at rest  enabled in root module" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "Elasticache redis replication group encryption at rest enabled in nested module" {
  path = "cases/all-resources-compliant-nested-modules"
  expectation {
    result = true
  }
}

case "Elasticache encryption at rest disabled for resource aws_elasticache_replication_group" {
  path = "cases/elasticache-redis-replication-group-encryption-at-rest-disabled"
  expectation {
    result = false
  }
}

case "Elasticache encryption at rest undefined for resource aws_elasticache_replication_group" {
  path = "cases/elasticache-redis-replication-group-encryption-at-rest-undefined"
  expectation {
    result = false
  }
}
