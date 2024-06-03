name = "ecs-non-privileged-container-definitions"

disabled = false

case "non privileged container definitions" {
    path = "cases/non-privileged-container-definitions"
    expectation {
        result = true
    }
}

case "some privileged container definitions" {
    path = "cases/privileged-container-definitions"
    expectation {
        result = false
    }
}