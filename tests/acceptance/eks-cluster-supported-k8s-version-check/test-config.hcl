name = "eks-cluster-supported-k8s-version-check"

disabled = false

case "Empty kubernetes version input" {
    path = "./cases/empty-version-input"
    expectation {
        result = true
    }
}

case "Unsupported k8s version" {
    path = "./cases/unsupported-version"
    expectation {
        result = false
    }
}

case "Supported k8s version" {
    path = "./cases/supported-version"
    expectation {
        result = true
    }
}