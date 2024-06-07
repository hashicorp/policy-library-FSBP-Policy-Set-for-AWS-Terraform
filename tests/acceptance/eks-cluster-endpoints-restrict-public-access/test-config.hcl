name = "eks-cluster-endpoints-restrict-public-access"

disabled = false

case "Restricted public access for endpoints" {
    path = "./cases/restricted-public-access"
    expectation {
        result = true
    }
}

case "Unrestricted public access for endpoints" {
    path = "./cases/non-restricted-public-access"
    expectation {
        result = false
    }
}

case "No public access input for endpoints" {
    path = "./cases/no-public-access-input"
    expectation {
        result = false
    }
}