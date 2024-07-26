name = "neptune-cluster-automated-backups-enabled"

disabled = false

case "Auto backup enabled" {
    path = "./cases/auto-backup-enabled"
    expectation {
        result = true
    }
}

case "Auto backup disabled" {
    path = "./cases/auto-backup-disabled"
    expectation {
        result = false
    }
}

case "Auto backup not defined" {
    path = "./cases/auto-backup-not-defined"
    expectation {
        result = false
    }
}

case "Auto backup enabled nested module" {
    path = "./cases/auto-backup-enabled-nested-module"
    expectation {
        result = true
    }
}