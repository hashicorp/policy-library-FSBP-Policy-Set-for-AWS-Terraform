name = "elb-ensure-deletion-protection-enabled"

disabled = true

case "Deletion protection enabled" {
    path = "./cases/deletion-protection-enabled"
    expectation {
        result = true
    }
}

case "Deletion protection disabled" {
    path = "./cases/deletion-protection-disabled"
    expectation {
        result = false
    }
}

case "Missing deletion protection attribute" {
    path = "./cases/missing-deletion-protection-flag"
    expectation {
        result = false
    }
}