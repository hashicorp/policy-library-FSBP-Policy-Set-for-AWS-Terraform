name = "ecs-task-definition-secure-networking-mode-and-user-definitions"

disabled = true

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

case "Task definition containing valid container definitions referenced from a file" {
    path = "cases/task-definition-referencing-container-definition-from-file"
    expectation {
        result = true
    }
}