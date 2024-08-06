name = "rds-instance-deployed-in-vpc"

disabled = false

case "RDS instance deployed in vpc" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "RDS instance deployed in vpc in nested module" {
  path = "cases/all-resources-complaint-nested-modules"
  expectation {
    result = true
  }
}

case "RDS instance not deployed in vpc in root module" {
  path = "cases/some-resources-not-complaint"
  expectation {
    result = false
  }
}

case "RDS instance not deployed in vpc in nested module" {
  path = "cases/some-resources-not-complaint-nested-module"
  expectation {
    result = false
  }
}
