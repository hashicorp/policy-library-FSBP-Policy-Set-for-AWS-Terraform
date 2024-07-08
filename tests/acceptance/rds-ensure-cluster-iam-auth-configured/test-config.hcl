name = "rds-ensure-cluster-iam-auth-configured"
disabled = true

case "RDS DB cluster iam auth configured" {
    path = "cases/iam-auth-configured"
    expectation {
        result = true
    }
}

case "RDS DB cluster iam auth not configured" {
    path = "cases/iam-auth-not-configured"
    expectation {
        result = false
    }
}

case "RDS DB cluster iam auth configured in nested module" {
    path = "cases/iam-auth-configured-nested-module"
    expectation {
        result = true
    }
}

case "RDS DB cluster iam auth not configured in nested module" {
    path = "cases/iam-auth-not-configured-nested-module"
    expectation {
        result = false
    }
}