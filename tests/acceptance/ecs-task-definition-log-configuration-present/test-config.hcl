name = "ecs-task-definition-log-configuration-present"

disabled = true

case "Log configuration and log driver are present" {
    path = "./cases/log-configuration-present"
    expectation {
        result = true
    }
}

case "Log configuration and log driver are absent" {
    path = "./cases/log-configuration-not-present"
    expectation {
        result = false
    }
}

case "Log driver is not present" {
    path = "./cases/log-driver-not-present"
    expectation {
        result = false
    }
}