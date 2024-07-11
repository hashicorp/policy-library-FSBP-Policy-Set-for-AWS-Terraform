name = "elb-ensure-access-logging-enabled"

disabled = false

case "Access logging enabled" {
    path = "./cases/access-logging-enabled"
    expectation {
        result = true
    }
}

case "Access logging disabled" {
    path = "./cases/access-logging-disabled"
    expectation {
        result = false
    }
}

case "Missing access logging block" {
    path = "./cases/missing-access-logging-block"
    expectation {
        result = false
    }
}

case "Missing enabled parameter in access logging block" {
    path = "./cases/missing-enabled-parameter"
    expectation {
        result = false
    }
}