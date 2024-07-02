name = "docdb-cluster-audit-logging-enabled"

disabled = false

case "Cluster with Audit Logging Enabled" {
    path = "./cases/cluster-with-audit-logging-enabled"
    expectation {
        result = true
    }
}

case "Cluster with Audit Logging Enabled Nested" {
    path = "./cases/cluster-with-audit-logging-enabled-nested"
    expectation {
        result = true
    }
}

case "Cluster with Both Audit and Profiler Logging Enabled" {
    path = "./cases/cluster-with-both-audit-and-profiler-logging-enabled"
    expectation {
        result = true
    }
}

case "Cluster with no Cloudwatch Logs" {
    path = "./cases/cluster-with-no-cloudwatch-logs"
    expectation {
        result = false
    }
}

case "Cluster with Profiler Logging Enabled" {
    path = "./cases/cluster-with-profiler-logging-enabled"
    expectation {
        result = false
    }
}
