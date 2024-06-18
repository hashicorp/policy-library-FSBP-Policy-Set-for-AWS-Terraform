name = "ecr-image-scanning-enabled"

disabled = false

case "ECR image scanning enabled" {
    path = "./cases/image-scanning-config-enabled"
    expectation {
        result = true
    }
}

case "ECR image scanning disabled" {
    path = "./cases/image-scanning-config-disabled"
    expectation {
        result = false
    }
}

case "Missing image scanning config" {
    path = "./cases/image-scanning-config-missing"
    expectation {
        result = false
    }
}
