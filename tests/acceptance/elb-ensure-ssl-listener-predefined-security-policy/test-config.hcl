name = "elb-ensure-ssl-listener-predefined-security-policy"

disabled = false

case "LB without HTTPS listeners" {
    path = "./cases/lb-without-https-listeners"
    expectation {
        result = true
    }
}

case "LB with HTTPS listener and predefined policy" {
    path = "./cases/lb-with-https-listeners-with-predefined-policy"
    expectation {
        result = true
    }
}

case "LB with HTTPS listener without predefined policy" {
    path = "./cases/lb-with-https-listeners-without-predefined-policy"
    expectation {
        result = false
    }
}

case "LB with HTTPS listener with incorrect predefined policy" {
    path = "./cases/lb-with-https-listeners-with-incorrect-predefined-policy"
    expectation {
        result = false
    }
}