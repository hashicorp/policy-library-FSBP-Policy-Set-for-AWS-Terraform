name = "docdb-cluster-backup-retention-check"

disabled = false

case "Cluster with Backup Retention Check" {
    path = "./cases/cluster-with-backup-retention-check"
    expectation {
        result = true
    }
}

case "Cluster with Backup Retention Check Nested" {
    path = "./cases/cluster-with-backup-retention-check-nested"
    expectation {
        result = true
    }
}

case "Cluster with no Backup Retention Check" {
    path = "./cases/cluster-with-no-backup-retention-check"
    expectation {
        result = false
    }
}

case "Cluster with Backup Retention Check set to lower limit" {
    path = "./cases/cluster-with-backup-retention-check-set-to-lower-limit"
    expectation {
        result = false
    }
}
