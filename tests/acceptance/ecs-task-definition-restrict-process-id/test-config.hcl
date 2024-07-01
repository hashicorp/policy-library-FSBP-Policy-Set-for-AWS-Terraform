name = "ecs-task-definition-restrict-process-id"

disabled = true

case "Task definition with no pid_mode configured" {
    path = "./cases/task-definition-no-pid"
    expectation {
        result = true
    }
}

case "Task definition with host pid_mode configured" {
    path = "./cases/task-definition-host-pid-mode"
    expectation {
        result = false
    }
}

case "Task definition with task pid_mode configured" {
    path = "./cases/task-definition-task-pid-mode"
    expectation {
        result = true
    }
}