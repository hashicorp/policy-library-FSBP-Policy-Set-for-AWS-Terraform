name = "neptune-cluster-snapshot-encryption-at-rest-enabled"

disabled = false

case "Snapshot encrypted" {
    path = "./cases/snapshot-encrypted"
    expectation {
        result = true
    }
}

case "Snapshot encrypted nested module" {
    path = "./cases/snapshot-encrypted-nested-module"
    expectation {
        result = true
    }
}

case "Storage encryption disabled snapshot idetifier set" {
    path = "./cases/storage-encryption-disabled-snapshot-idetifier-set"
    expectation {
        result = false
    }
}

case "Storage encryption enabled snapshot idetifier not set" {
    path = "./cases/storage-encryption-enabled-snapshot-idetifier-not-set"
    expectation {
        result = false
    }
}

case "Storage encryption not defined snapshot idetifier set" {
    path = "./cases/storage-encryption-not-defined-snapshot-idetifier-set"
    expectation {
        result = false
    }
}