name = "eks-cluster-encrypted-kubernetes-secrets"

disabled = false

case "No encryption config present" {
    path = "./cases/no-encryption-config-present"
    expectation {
        result = false
    }
}

case "No resources covered for encryption" {
    path = "./cases/empty-resources-list"
    expectation {
        result = false
    }
}

case "Invalid resources covered for encryption" {
    path = "./cases/invalid-resources-list"
    expectation {
        result = false
    }
}

case "Empty Key ARN input for provider" {
    path = "./cases/empty-key-arn-for-provider"
    expectation {
        result = false
    }
}

case "Cluster encrypted according to standards" {
    path = "./cases/valid-encryption-config"
    expectation {
        result = true
    }
}