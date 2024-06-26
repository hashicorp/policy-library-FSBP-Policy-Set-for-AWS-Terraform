name = "rds-ensure-cluster-deletion-protection-enabled"
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

case "RDS DB instance and Cluster iam auth configured in nested module" {
    path = "cases/iam-auth-configured-nested-module"
    expectation {
        result = true
    }
}

case "RDS DB instance and Cluster iam auth not configured in nested module" {
    path = "cases/iam-auth-not-configured-nested-module"
    expectation {
        result = false
    }
}