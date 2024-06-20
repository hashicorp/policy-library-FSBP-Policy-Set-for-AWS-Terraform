name = "ecs-task-definition-no-secrets-as-environment-variables"

disabled = false

case "Container definitions with invalid environment variables" {
    path = "cases/container-definitions-with-invalid-env-variables"
    expectation {
        result = false
    }
}

case "Container definitions with valid environment variables" {
    path = "cases/container-definitions-with-valid-env-variables"
    expectation {
        result = true
    }
}

case "Container definitions with no environment variables" {
    path = "cases/container-definitions-with-no-env-variables"
    expectation {
        result = true
    }
}