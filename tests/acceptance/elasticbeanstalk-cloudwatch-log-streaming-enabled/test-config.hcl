name = "elasticbeanstalk-cloudwatch-log-streaming-enabled"

disabled = true

case "Elasticbeanstalk cloudwatch log streaming enabled in root module" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "Elasticbeanstalk cloudwatch log streaming enabled in nested module" {
  path = "cases/all-resources-compliant-nested-modules"
  expectation {
    result = true
  }
}

case "Elasticbeanstalk cloudwatch log streaming disabled" {
  path = "cases/elasticbeanstalk-cloudwatch-log-streaming-disabled"
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
