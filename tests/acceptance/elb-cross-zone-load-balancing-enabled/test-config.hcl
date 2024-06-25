name = "elb-cross-zone-load-balancing-enabled"

disabled = true

case "Cross zone load balancing enabled" {
    path = "./cases/cross-zone-load-balancing-enabled"
    expectation {
        result = true
    }
}

case "Cross zone load balancing disabled" {
    path = "./cases/cross-zone-load-balancing-disabled"
    expectation {
        result = false
    }
}

case "Missing cross zone load balancing attribute" {
    path = "./cases/missing-cross-zone-load-balancing-attribute"
    expectation {
        result = true
    }
}