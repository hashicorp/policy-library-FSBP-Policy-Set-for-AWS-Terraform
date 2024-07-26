name = "s3-block-public-access-account-level"
disabled = false

case "Compliant resource in root module" {
    path = "cases/success"
    expectation {
        result = true
    }
}

case "Non compliant resource in root module" {
    path = "cases/failure"
    expectation {
        result = false
    }
}

case "Compliant resource in nested module" {
    path = "cases/success-nested-module"
    expectation {
        result = true
    }
}

case "Non compliant resource in nested module" {
    path = "cases/failure-nested-module"
    expectation {
        result = false
    }
}