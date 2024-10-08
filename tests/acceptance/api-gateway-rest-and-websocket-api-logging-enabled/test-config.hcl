name = "api-gateway-rest-and-websocket-api-logging-enabled"

disabled = false

case "API Gateway logging enabled at all stages" {
    path = "./cases/api-gateway-logging-is-error-or-info"
    expectation {
        result = true
    }
}

case "API Gateway loggingLevel is OFF" {
    path = "./cases/api-gateway-logging-is-off"
    expectation {
        result = false
    }
}

case "API Gateway logging is not available" {
    path = "./cases/api-gateway-logging-is-empty"
    expectation {
        result = false
    }
}
