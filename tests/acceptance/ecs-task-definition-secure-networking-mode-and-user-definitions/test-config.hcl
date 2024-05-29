name = "ecs-task-definition-secure-networking-mode-and-user-definitions"

disabled = false

case "Task definition with AWSVPC networking mode" {
    path = "cases/task-definition-with-awsvpc-network-mode"
    expectation {
        result = true
    }
}

case "Task definition with multiple invalid container definitions" {
    path = "cases/task-definition-with-invalid-container-definitions"
    expectation {
        result = false
    }
}

case "Task definition containing multiple valid container definitions" {
    path = "cases/task-definition-with-valid-container-definitions"
    expectation {
        result = true
    }
}