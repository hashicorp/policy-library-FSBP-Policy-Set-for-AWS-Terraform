name = "rds-ensure-db-instance-deletion-protection-enable"
disabled = false

case "RDS DB instance and Cluster deletion protection is enabled" {
    path = "cases/deletion-protection-enabled"
    expectation {
        result = true
    }
}

case "RDS DB instance and Cluster deletion protection is disabled" {
    path = "cases/deletion-protection-disabled"
    expectation {
        result = false
    }
}

case "RDS DB instance and Cluster deletion protection is enabled. Resources in nested module" {
    path = "cases/deletion-protection-enabled-nested-module"
    expectation {
        result = true
    }
}

case "RDS DB instance and Cluster deletion protection is disabled. Resources in nested module" {
    path = "cases/deletion-protection-disabled-nested-module"
    expectation {
        result = false
    }
}