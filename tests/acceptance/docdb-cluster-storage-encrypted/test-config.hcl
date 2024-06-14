name = "docdb-cluster-storage-encrypted"

disabled = false

case "Cluster with no Storage Encryption" {
    path = "./cases/cluster-with-no-storage-encryption"
    expectation {
        result = false
    }
}

case "Cluster with Storage Encryption Disabled" {
    path = "./cases/cluster-with-storage-encryption-disabled"
    expectation {
        result = false
    }
}

case "Cluster with Storage Encryption Enabled" {
    path = "./cases/cluster-with-storage-encryption-enabled"
    expectation {
        result = true
    }
}

case "Cluster with Storage Encryption Enabled Nested" {
    path = "./cases/cluster-with-storage-encryption-enabled-nested"
    expectation {
        result = true
    }
}
