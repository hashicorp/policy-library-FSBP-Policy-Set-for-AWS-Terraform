name = "ecs-cluster-enable-container-insights"

disabled = false

case "Container insights enabled" {
    path = "./cases/container-insights-enabled"
    expectation {
        result = true
    }
}

case "Container insights disabled" {
    path = "./cases/container-insights-disabled"
    expectation {
        result = false
    }
}

case "No container insights setting" {
    path = "./cases/no-container-insights"
    expectation {
        result = false
    }
}