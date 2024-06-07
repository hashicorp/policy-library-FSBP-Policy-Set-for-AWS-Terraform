name = "ecs-task-definition-read-only-root-file-system-access"

disabled = false

case "Task definition with valid container definitions" {
    path = "cases/task-definition-with-valid-container-definitions"
    expectation {
        result = true
    }
}

case "Task definition with container definitions giving write access to root file systems" {
    path = "cases/task-definition-with-container-definition-having-write-access"
    expectation {
        result = false
    }
}

case "Task definition with valid container definitions read from file" {
    path = "cases/task-definition-with-valid-container-definition-read-from-file"
    expectation {
        result = true
    }
}