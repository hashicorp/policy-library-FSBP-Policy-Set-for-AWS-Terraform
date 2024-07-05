name = "rds-ensure-cluster-backtracking-enabled"
disabled = true

case "RDS DB Cluster cluster backtracking is enabled" {
    path = "cases/backtracking-enabled"
    expectation {
        result = true
    }
}

case "RDS DB Cluster cluster backtracking is disabled" {
    path = "cases/backtracking-disabled"
    expectation {
        result = false
    }
}

case "RDS DB Cluster cluster backtracking is enabled. Resources in nested module" {
    path = "cases/backtracking-enabled-nested-module"
    expectation {
        result = true
    }
}

case "RDS DB Cluster cluster backtracking is disabled. Resources in nested module" {
    path = "cases/backtracking-disabled-nested-module"
    expectation {
        result = false
    }
}