name = "network-firewall-logging-enabled"

disabled = false

case "Network firewall logging configured root module" {
    path = "./cases/network-firewall-logging-configured-root-module"
    expectation {
        result = true
    }
}

case "Network firewall logging configured nested module" {
    path = "./cases/network-firewall-logging-configured-nested-module"
    expectation {
        result = true
    }
}

case "no Network firewall logging configured" {
    path = "./cases/no-network-firewall-logging-configured"
    expectation {
        result = false
    }
}

case "Network firewall logging configured but in different module" {
    path = "./cases/network-firewall-logging-configured-different-modules"
    expectation {
        result = false
    }
}