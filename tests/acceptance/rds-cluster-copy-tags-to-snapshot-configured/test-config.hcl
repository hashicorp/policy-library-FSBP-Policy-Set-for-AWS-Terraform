name = "rds-cluster-copy-tags-to-snapshot-configured"

disabled = false

case "RDS cluster copy tags to snapshot configured in root module" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "RDS cluster copy tags to snapshot configured in nested module" {
  path = "cases/all-resources-complaint-nested-modules"
  expectation {
    result = true
  }
}

case "RDS cluster copy tags to snapshot not configured in root module" {
  path = "cases/some-resources-not-complaint"
  expectation {
    result = false
  }
}

case "RDS cluster copy tags to snapshot not configured in nested module" {
  path = "cases/some-resources-not-complaint-nested-module"
  expectation {
    result = false
  }
}
