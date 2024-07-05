name = "neptune-cluster-encryption-at-rest-enabled"

disabled = true

case "Storage encryption enabled" {
    path = "./cases/storage-encryption-enabled"
    expectation {
        result = true
    }
}

case "Storage encryption disabled" {
    path = "./cases/storage-encryption-disabled"
    expectation {
        result = false
    }
}

case "Storage encryption not defined" {
    path = "./cases/storage-encryption-not-defined"
    expectation {
        result = false
    }
}

case "Storage encryption enabled nested module" {
    path = "./cases/storage-encryption-enabled-nested-module"
    expectation {
        result = true
    }
}