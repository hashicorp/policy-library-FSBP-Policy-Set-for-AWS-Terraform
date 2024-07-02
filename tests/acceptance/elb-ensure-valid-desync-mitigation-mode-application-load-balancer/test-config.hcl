name = "elb-ensure-valid-desync-mitigation-mode-application-load-balancer"

disabled = false

case "No desync mitigation mode input" {
    path = "./cases/no-desync-mitigation-mode-input"
    expectation {
        result = true
    }
}

case "Valid desync mitigation mode input" {
    path = "./cases/valid-desync-mitigation-mode-input"
    expectation {
        result = true
    }
}

case "Invalid desync mitigation mode input" {
    path = "./cases/invalid-desync-mitigation-mode-input"
    expectation {
        result = false
    }
}

case "Invalid desync mitigation mode input for network lb" {
    path = "./cases/invalid-desync-mitigation-mode-input-network-lb"
    expectation {
        result = true
    }
}