name = "elasticbeanstalk-enhanced-health-reporting-disabled"

disabled = false

case "Elasticbeanstalk enhanced health reporting enabled in root module" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "Elasticbeanstalk enhanced health reporting enabled in nested module" {
  path = "cases/all-resources-compliant-nested-modules"
  expectation {
    result = true
  }
}

case "Elasticbeanstalk enhanced health reporting disabled" {
  path = "cases/elasticbeanstalk-enhanced-health-reporting-disabled"
  expectation {
    result = false
  }
}

case "elasticbeanstalk environment setting undefined" {
  path = "cases/elasticbeanstalk-environment-setting-undefined"
  expectation {
    result = false
  }
}
