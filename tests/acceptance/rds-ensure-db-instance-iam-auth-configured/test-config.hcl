name = "rds-ensure-db-instance-iam-auth-configured"
disabled = true

case "RDS DB instance iam auth configured" {
    path = "cases/iam-auth-configured"
    expectation {
        result = true
    }
}

case "RDS DB instance iam auth not configured" {
    path = "cases/iam-auth-not-configured"
    expectation {
        result = false
    }
}

case "RDS DB instance iam auth configured. Resources in nested module" {
    path = "cases/iam-auth-configured-nested-module"
    expectation {
        result = true
    }
}

case "RDS DB instance iam auth not configured. Resources in nested module" {
    path = "cases/iam-auth-not-configured-nested-module"
    expectation {
        result = false
    }
}