name = "network-firewall-policy-rule-group-associated"

disabled = false

case "network-firewall-policy rule associated" {
    path = "./cases/rule-associated"
    expectation {
        result = true
    }
}

case "network-firewall-policy no rule associated" {
    path = "./cases/no-rule-associated"
    expectation {
        result = false
    }
}


case "network-firewall-policy rule associated nested module" {
    path = "./cases/rule-associated-nested-module"
    expectation {
        result = true
    }
}