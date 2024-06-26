name = "rds-ensure-db-instance-iam-auth-configured"
disabled = false

case "RDS DB instance and Cluster iam auth configured" {
    path = "cases/iam-auth-configured"
    expectation {
        result = true
    }
}

case "RDS DB instance and Cluster iam auth not configured" {
    path = "cases/iam-auth-not-configured"
    expectation {
        result = false
    }
}

case "RDS DB instance and Cluster iam auth configured. Resources in nested module" {
    path = "cases/iam-auth-configured-nested-module"
    expectation {
        result = true
    }
}

case "RDS DB instance and Cluster iam auth not configured. Resources in nested module" {
    path = "cases/iam-auth-not-configured-nested-module"
    expectation {
        result = false
    }
}