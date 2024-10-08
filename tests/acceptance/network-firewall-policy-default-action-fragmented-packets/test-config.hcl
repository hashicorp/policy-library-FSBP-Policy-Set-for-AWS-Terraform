name = "network-firewall-policy-default-action-fragmented-packets"

disabled = false

case "default stateless actions contains drop" {
    path = "./cases/default-fragment-stateless-actions-contains-drop"
    expectation {
        result = true
    }
}

case "default stateless actions contains forward" {
    path = "./cases/default-fragment-stateless-actions-contains-forward"
    expectation {
        result = true
    }
}

case "default stateless actions contains pass" {
    path = "./cases/default-fragment-stateless-actions-contains-pass"
    expectation {
        result = false
    }
}
