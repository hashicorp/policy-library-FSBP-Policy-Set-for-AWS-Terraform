name = "rds-ensure-cloudwatch-logs-enabled"
disabled = false

case "RDS DB Instance Cloudwatch Logs enabled" {
    path = "cases/cloudwatch-logs-enabled"
    expectation {
        result = true
    }
}

case "RDS DB Instance Cloudwatch Logs disabled" {
    path = "cases/cloudwatch-logs-disabled"
    expectation {
        result = false
    }
}

case "RDS DB Instance Cloudwatch Logs enabled. Resource in nested module" {
    path = "cases/cloudwatch-logs-enabled-nested-module"
    expectation {
        result = true
    }
}

case "RDS DB Instance Cloudwatch Logs disabled. Resource in nested module" {
    path = "cases/cloudwatch-logs-disabled-nested-module"
    expectation {
        result = false
    }
}