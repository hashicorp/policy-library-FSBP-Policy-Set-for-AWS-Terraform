name = "dynamo-db-tables-delete-protection-enabled"

disabled = false

case "Delete protection enabled" {
    path = "./cases/delete-protection-enabled"
    expectation {
        result = true
    }
}

case "Delete protection enabled nested module" {
    path = "./cases/delete-protection-enabled-nested-module"
    expectation {
        result = true
    }
}

case "Delete protection disabled" {
    path = "./cases/delete-protection-disabled"
    expectation {
        result = false
    }
}

case "Delete protection undefined" {
    path = "./cases/delete-protection-undefined"
    expectation {
        result = false
    }
}