name = "rds-ensure-no-default-port"

disabled = false

case "RDS instance has non default port" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "RDS instance has non default port in nested module" {
  path = "cases/all-resources-complaint-nested-modules"
  expectation {
    result = true
  }
}

case "RDS instance has default port" {
  path = "cases/some-resources-not-complaint"
  expectation {
    result = false
  }
}

case "RDS instance has default port in nested module" {
  path = "cases/some-resources-not-complaint-nested-module"
  expectation {
    result = false
  }
}
