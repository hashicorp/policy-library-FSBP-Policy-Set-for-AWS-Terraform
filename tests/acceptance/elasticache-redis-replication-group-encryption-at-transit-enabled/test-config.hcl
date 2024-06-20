name = "elasticache-redis-replication-group-encryption-at-transit-enabled"

disabled = true

case "Elasticache redis replication group encryption at transit  enabled in root module" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "Elasticache redis replication group encryption at transit enabled in nested module" {
  path = "cases/all-resources-compliant-nested-modules"
  expectation {
    result = true
  }
}

case "Elasticache encryption at transit disabled for resource aws_elasticache_replication_group" {
  path = "cases/elasticache-redis-replication-group-encryption-at-transit-disabled"
  expectation {
    result = false
  }
}

case "Elasticache encryption at transit undefined for resource aws_elasticache_replication_group" {
  path = "cases/elasticache-redis-replication-group-encryption-at-transit-undefined"
  expectation {
    result = false
  }
}
