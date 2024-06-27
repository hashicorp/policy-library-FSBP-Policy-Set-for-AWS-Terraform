name = "elb-drop-invalid-http-headers"

disabled = true

case "NLB configuration" {
    path = "cases/nlb-configuration"
    expectation {
        result = true
    }
}

case "ALB dropping invalid HTTP headers" {
    path = "cases/alb-configuration-dropping-invalid-headers"
    expectation {
        result = true
    }
}

case "ALB not dropping invalid HTTP headers" {
    path = "cases/alb-configuration-not-dropping-invalid-headers"
    expectation {
        result = false
    }
}
