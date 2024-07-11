name = "elb-ensure-ssl-listener-acm-cert-classic-load-balancer"

disabled = true

case "No HTTPS/SSL listeners" {
    path = "./cases/no-https-ssl-listeners"
    expectation {
        result = true
    }
}

case "SSL listener without cert" {
    path = "./cases/ssl-listener-without-ssl-cert"
    expectation {
        result = false
    }
}

case "SSL listener with IAM cert" {
    path = "./cases/ssl-listener-with-iam-cert"
    expectation {
        result = false
    }
}

case "SSL listener with ACM cert" {
    path = "./cases/ssl-listener-with-acm-cert"
    expectation {
        result = true
    }
}

case "SSL listener with cert from another module" {
    path = "./cases/ssl-listener-with-cert-different-modules"
    expectation {
        result = false
    }
}