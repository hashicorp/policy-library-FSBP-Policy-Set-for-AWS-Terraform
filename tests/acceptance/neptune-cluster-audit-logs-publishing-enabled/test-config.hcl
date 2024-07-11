name = "neptune-cluster-audit-logs-publishing-enabled"

disabled = true

case "Audit Logs export enabled" {
    path = "./cases/audit-logs-export-enabled"
    expectation {
        result = true
    }
}

case "Storage encryption disabled" {
    path = "./cases/audit-logs-export-disabled"
    expectation {
        result = false
    }
}

case "Storage encryption not defined" {
    path = "./cases/audit-logs-export-not-defined"
    expectation {
        result = false
    }
}

case "Storage encryption enabled nested module" {
    path = "./cases/audit-logs-export-enabled-nested-module"
    expectation {
        result = true
    }
}