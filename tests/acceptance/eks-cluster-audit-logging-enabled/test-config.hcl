name = "eks-cluster-audit-logging-enabled"

disabled = true

case "Audit logging enabled" {
    path = "./cases/audit-logging-enabled"
    expectation {
        result = true
    }
}

case "Audit logging disabled" {
    path = "./cases/audit-logging-not-enabled"
    expectation {
        result = false
    }
}

case "No cluster log type input present" {
    path = "./cases/empty-cluster-log-types-input"
    expectation {
        result = false
    }
}