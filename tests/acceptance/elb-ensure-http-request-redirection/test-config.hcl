name = "elb-ensure-http-request-redirection"

disabled = false

case "success load balancers with https redirection root module" {
    path = "./cases/lb-with-https-redirection-root-module"
    expectation {
        result = true
    }
}

case "success load balancers with https redirection nested module" {
    path = "./cases/lb-with-https-redirection-nested-module"
    expectation {
        result = true
    }
}

case "no application load balancers" {
    path = "./cases/no-application-load-balancers"
    expectation {
        result = true
    }
}

case "load balancer without listeners root module" {
    path = "./cases/lb-without-listeners-root-module"
    expectation {
        result = false
    }
}

case "load balancer without listeners nested module" {
    path = "./cases/lb-without-listeners-nested-module"
    expectation {
        result = false
    }
}

case "load balancer without listener rules root module" {
    path = "./cases/lb-without-listener-rules-root-module"
    expectation {
        result = false
    }
}

case "load balancer without listener rules nested module" {
    path = "./cases/lb-without-listener-rules-nested-module"
    expectation {
        result = false
    }
}