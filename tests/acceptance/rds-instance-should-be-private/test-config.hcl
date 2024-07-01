name = "rds-instance-should-be-private"

disabled = false

case "RDS instance should be private all resources compliant" {
  path = "cases/all-resources-compliant"
  expectation {
    result = true
  }
}

case "RDS instance should be private all resources complaint in nested module" {
  path = "cases/all-resources-compliant-nested-module"
  expectation {
    result = true 
  }
}

case "RDS instance should be private some resources not compliant" {
  path = "cases/some-resources-not-compliant"
  expectation {
    result = false
  }
}

case "RDS instance should be private some resources not complaint in nested module" {
  path = "cases/some-resources-not-compliant-nested-module"
  expectation {
    result = false
  }
}