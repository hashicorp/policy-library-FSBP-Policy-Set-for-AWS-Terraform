name = "network-firewall-should-have-deletion-protection-enabled"

disabled = false

case "Deletion Protection is not available" {
    path = "./cases/deletion-protection-is-not-available"
    expectation {
        result = false
    }
}

case "Deletion Protection is false" {
    path = "./cases/deletion-protection-is-false"
    expectation {
        result = false
    }
}

case "Deletion Protection is true" {
    path = "./cases/deletion-protection-is-true"
    expectation {
        result = true
    }
}