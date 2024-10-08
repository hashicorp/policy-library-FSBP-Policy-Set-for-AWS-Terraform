name = "network-firewall-stateless-rule-group"

disabled = false

case "stateless-actions-are-not-present" {
    path = "./cases/stateless-actions-are-not-present"
    expectation {
        result = false
    }
}

case "stateless-actions-are-present-in-one-resource-and-in-other-not" {
    path = "./cases/stateless-actions-are-present-in-one-resource-and-in-other-not"
    expectation {
        result = false
    }
}

case "stateless-actions-are-present" {
    path = "./cases/stateless-actions-are-present"
    expectation {
        result = true
    }
}