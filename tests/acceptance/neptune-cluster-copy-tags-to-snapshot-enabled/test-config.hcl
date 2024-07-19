name = "neptune-cluster-copy-tags-to-snapshot-enabled"

disabled = false

case "Copy tags to snapshot enabled" {
    path = "./cases/copy-tags-to-snapshot-enabled"
    expectation {
        result = true
    }
}

case "Copy tags to snapshot disabled" {
    path = "./cases/copy-tags-to-snapshot-disabled"
    expectation {
        result = false
    }
}

case "Copy tags to snapshot not defined" {
    path = "./cases/copy-tags-to-snapshot-not-defined"
    expectation {
        result = false
    }
}

case "Copy tags to snapshot enabled nested module" {
    path = "./cases/copy-tags-to-snapshot-enabled-nested-module"
    expectation {
        result = true
    }
}