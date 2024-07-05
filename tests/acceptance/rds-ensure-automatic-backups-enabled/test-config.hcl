name = "rds-ensure-automatic-backups-enabled"
disabled = true

case "Automatic backups is enabled" {
    path = "cases/backups-enabled"
    expectation {
        result = true
    }
}

case "Automatic backups is disabled" {
    path = "cases/backups-disabled"
    expectation {
        result = false
    }
}

case "Automatic backups is enabled. Resource in nested module" {
    path = "cases/backups-enabled-nested-module"
    expectation {
        result = true
    }
}

case "Automatic backups is disabled. Resource in nested module" {
    path = "cases/backups-disabled-nested-module"
    expectation {
        result = false
    }
}