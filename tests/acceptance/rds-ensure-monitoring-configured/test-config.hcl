name = "rds-ensure-monitoring-configured"

disabled = true

case "RDS instance monitoring is configured" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "RDS instance monitoring configured in nested module" {
  path = "cases/all-resources-complaint-nested-modules"
  expectation {
    result = true
  }
}

case "RDS instance monitoring not configured in root module" {
  path = "cases/some-resources-not-complaint"
  expectation {
    result = false
  }
}

case "RDS instance monitoring not configured in nested module" {
  path = "cases/some-resources-not-complaint-nested-module"
  expectation {
    result = false
  }
}
