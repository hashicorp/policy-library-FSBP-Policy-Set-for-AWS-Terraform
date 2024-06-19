name = "elasticbeanstalk-managed-platform-updates-enabled"

disabled = false

case "Elasticbeanstalk managed platform updates enabled in root module" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "Elasticbeanstalk managed platform updates enabled in nested module" {
  path = "cases/all-resources-compliant-nested-modules"
  expectation {
    result = true
  }
}

case "Elasticbeanstalk environment setting undefined" {
  path = "cases/elasticbeanstalk-environment-setting-undefined"
  expectation {
    result = false
  }
}

case "Elasticbeanstalk managed actions disabled" {
  path = "cases/elasticbeanstalk-managed-actions-disabled"
  expectation {
    result = false
  }
}

case "Elasticbeanstalk platform updates disabled" {
  path = "cases/elasticbeanstalk-platform-updates-disabled"
  expectation {
    result = false
  }
}
