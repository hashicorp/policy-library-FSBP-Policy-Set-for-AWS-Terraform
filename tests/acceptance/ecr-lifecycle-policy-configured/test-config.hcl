name = "ecr-lifecycle-policy-configured"

disabled = false

case "Lifecycle policy configured root module" {
    path = "./cases/life-cycle-policy-configured-root-module"
    expectation {
        result = true
    }
}

case "Lifecycle policy configured nested module" {
    path = "./cases/life-cycle-policy-configured-nested-module"
    expectation {
        result = true
    }
}

case "no lifecycle policy configured" {
    path = "./cases/no-life-cycle-policy-configured"
    expectation {
        result = false
    }
}

case "lifecycle policy configured but in different module" {
    path = "./cases/life-cycle-configured-different-modules"
    expectation {
        result = false
    }
}