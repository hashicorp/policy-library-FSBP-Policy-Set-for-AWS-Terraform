name = "docdb-cluster-deletion-protection-enabled"

disabled = true

case "Cluster with Deletion Protection Disabled" {
    path = "./cases/cluster-with-deletion-protection-disabled"
    expectation {
        result = false
    }
}

case "Cluster with Deletion Protection Enabled" {
    path = "./cases/cluster-with-deletion-protection-enabled"
    expectation {
        result = true
    }
}

case "Cluster with Deletion Protection Enabled Nested" {
    path = "./cases/cluster-with-deletion-protection-enabled-nested"
    expectation {
        result = true
    }
}

case "Cluster with No Deletion Protection" {
    path = "./cases/cluster-with-no-deletion-protection"
    expectation {
        result = false
    }
}
