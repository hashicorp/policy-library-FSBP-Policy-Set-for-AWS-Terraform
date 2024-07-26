name = "neptune-cluster-deletion-protection-enabled"

disabled = false

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

case "Deletion protection not defined" {
    path = "./cases/deletion-protection-not-defined"
    expectation {
        result = false
    }
}

case "Deletion protection enabled nested module" {
    path = "./cases/deletion-protection-enabled-nested-module"
    expectation {
        result = true
    }
}