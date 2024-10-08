name = "msk-in-cluster-node-require-encrypted-in-transit"

disabled = false

case "MSK In Cluster Node Set to False" {
    path = "./cases/msk-in-cluster-node-set-to-false"
    expectation {
        result = false
    }
}

case "MSK In Cluster Node Set to True" {
    path = "./cases/msk-in-cluster-node-set-to-true"
    expectation {
        result = true
    }
}

case "MSK In Cluster Node Set to True Nested" {
    path = "./cases/msk-in-cluster-node-set-to-true-nested"
    expectation {
        result = true
    }
}

case "MSK with no In Cluster Node Attribute" {
    path = "./cases/msk-with-no-in-cluster-node-attribute"
    expectation {
        result = true
    }
}

case "MSK with In Cluster Node with No Encryption in Transit Attribute" {
    path = "./cases/msk-in-cluster-node-with-no-encryption-in-transit-attribute"
    expectation {
        result = false
    }
}
