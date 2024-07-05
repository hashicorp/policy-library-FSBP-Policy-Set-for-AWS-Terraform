name = "rds-cluster-and-db-snapshot-encrypted"
disabled = true

case "RDS DB instance and Cluster encryption is enabled" {
    path = "cases/encryption-enabled"
    expectation {
        result = true
    }
}

case "RDS DB instance and Cluster encryption is disabled" {
    path = "cases/encryption-disabled"
    expectation {
        result = false
    }
}

case "RDS DB instance and Cluster encryption is enabled. Resources in nested module" {
    path = "cases/encryption-enabled-nested-module"
    expectation {
        result = true
    }
}

case "RDS DB instance and Cluster encryption is disabled. Resources in nested module" {
    path = "cases/encryption-disabled-nested-module"
    expectation {
        result = false
    }
}