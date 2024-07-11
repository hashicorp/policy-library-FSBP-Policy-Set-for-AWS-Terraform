name = "rds-ensure-automatic-minor-version-upgrades-enabled"
disabled = true

case "RDS DB instance automatic minor upgrades is enabled" {
    path = "cases/minor-upgrades-enabled"
    expectation {
        result = true
    }
}

case "RDS DB instance automatic minor upgrades is disabled" {
    path = "cases/minor-upgrades-disabled"
    expectation {
        result = false
    }
}

case "RDS DB instance automatic minor upgrades is enabled. Resources in nested module" {
    path = "cases/minor-upgrades-enabled-nested-module"
    expectation {
        result = true
    }
}

case "RDS DB instance automatic minor upgrades is disabled. Resources in nested module" {
    path = "cases/minor-upgrades-disabled-nested-module"
    expectation {
        result = false
    }
}