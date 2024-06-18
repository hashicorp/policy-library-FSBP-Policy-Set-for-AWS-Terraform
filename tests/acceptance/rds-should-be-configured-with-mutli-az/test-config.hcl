name = "rds-should-be-configured-with-multi-az""

disabled = false

case "RDS instance configured with multi az in root module" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "RDS instance configured with multi az in nested module" {
  path = "cases/all-resources-compliant-nested-modules"
  expectation {
    result = true
  }
}

case "RDS instance not configured with multi az in root module" {
  path = "cases/some-resource-not-complaint"
  expectation {
    result = false
  }
}

case "RDS instance not configured with multi az in nested module" {
  path = "cases/some-resource-not-complaint-nested-module"
  expectation {
    result = false
  }
}
