name = "dynamo-db-accelerator-clusters-encryption-at-rest-enabled"

disabled = true

case "Server side encryption enabled" {
    path = "./cases/server-side-encryption-enabled"
    expectation {
        result = true
    }
}

case "Server side encryption enabled nested module" {
    path = "./cases/server-side-encryption-enabled-nested-module"
    expectation {
        result = true
    }
}

case "Server side encryption disabled" {
    path = "./cases/server-side-encryption-disabled"
    expectation {
        result = false
    }
}

case "Server side encryption undefined" {
    path = "./cases/server-side-encryption-undefined"
    expectation {
        result = false
    }
}