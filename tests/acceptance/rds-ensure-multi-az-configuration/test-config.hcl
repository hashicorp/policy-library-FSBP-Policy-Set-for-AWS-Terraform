name = "rds-ensure-multi-az-configuration"

disabled = true

case "RDS instance configured with multi az in root module" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "RDS instance configured with multi az in nested module" {
  path = "cases/all-resources-complaint-nested-modules"
  expectation {
    result = true
  }
}

case "RDS instance not configured with multi az in root module" {
  path = "cases/some-resources-not-complaint"
  expectation {
    result = false
  }
}

case "RDS instance not configured with multi az in nested module" {
  path = "cases/some-resources-not-complaint-nested-module"
  expectation {
    result = false
  }
}
