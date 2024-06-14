name = "rds-encryption-at-rest-enabled"
disabled = false

case "RDS encryption is enabled" {
    path = "cases/encryption-enabled"
    expectation {
        result = true
        want_messages = [
            "This result means that all resources have passed the policy check for the policy rds-encryption-at-rest-enabled"
        ]
    }
}

case "RDS encryption is disabled" {
    path = "cases/encryption-disabled"
    expectation {
        result = false
        want_messages = [
            "Attribute 'storage_encrypted' must be set to true for 'aws_db_instance' resources",
            "aws_db_instance.this"
        ]
    }
}

case "RDS encryption is enabled. Resource in nested module" {
    path = "cases/encryption-enabled-nested-module"
    expectation {
        result = true
        want_messages = [
            "This result means that all resources have passed the policy check for the policy rds-encryption-at-rest-enabled"
        ]
    }
}

case "RDS encryption is disabled. Resource in nested module" {
    path = "cases/encryption-disabled-nested-module"
    expectation {
        result = false
        want_messages = [
            "Attribute 'storage_encrypted' must be set to true for 'aws_db_instance' resources",
            "module.rds.aws_db_instance.this"
        ]
    }
}