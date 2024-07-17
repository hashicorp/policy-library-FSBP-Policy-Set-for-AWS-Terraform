name = "neptune-cluster-db-auth-enabled"

disabled = false

case "DB auth enabled" {
    path = "./cases/db-auth-enabled"
    expectation {
        result = true
    }
}

case "DB auth disabled" {
    path = "./cases/db-auth-disabled"
    expectation {
        result = false
    }
}

case "DB auth not defined" {
    path = "./cases/db-auth-not-defined"
    expectation {
        result = false
    }
}

case "DB auth enabled nested module" {
    path = "./cases/db-auth-enabled-nested-module"
    expectation {
        result = true
    }
}