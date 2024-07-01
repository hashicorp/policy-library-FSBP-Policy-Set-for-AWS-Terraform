name = "elb-configure-https-tls-termination-classic-load-balancer"

disabled = false

case "TLS termination enabled" {
    path = "./cases/tls-termination-enabled"
    expectation {
        result = true
    }
}

case "TLS termination partially enabled" {
    path = "./cases/tls-termination-partially-enabled"
    expectation {
        result = false
    }
}

case "Missing SSL certs" {
    path = "./cases/missing-ssl-certs"
    expectation {
        result = false
    }
}