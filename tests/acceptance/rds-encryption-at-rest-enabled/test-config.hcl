name = "rds-encryption-at-rest-enabled"
disabled = true

case "RDS encryption is enabled" {
    path = "cases/encryption-enabled"
    expectation {
        result = true
    }
}

case "RDS encryption is disabled" {
    path = "cases/encryption-disabled"
    expectation {
        result = false
    }
}

case "RDS encryption is enabled. Resource in nested module" {
    path = "cases/encryption-enabled-nested-module"
    expectation {
        result = true
    }
}

case "RDS encryption is disabled. Resource in nested module" {
    path = "cases/encryption-disabled-nested-module"
    expectation {
        result = false
    }
}