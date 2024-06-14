name = "ecs-fargate-service-platform-compatibility"

disabled = false

case "Invalid platform version for Fargate service" {
    path = "./cases/incorrect-platform-version-for-fargate"
    expectation {
        result = false
    }
}

case "Empty launch type input for ECS service" {
    path = "./cases/no-launch-type-present"
    expectation {
        result = true
    }
}

case "Empty platform version input for ECS service" {
    path = "./cases/no-platform-version-present"
    expectation {
        result = true
    }
}