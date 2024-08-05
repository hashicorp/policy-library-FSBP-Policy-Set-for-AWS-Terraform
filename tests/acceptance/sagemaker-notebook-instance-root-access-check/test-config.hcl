name = "sagemaker-notebook-instance-root-access-check"

disabled = false

case "Sagemaker Notebook Instance with Root Access Disabled" {
    path = "./cases/sagemaker-notebook-instance-with-root-access-disabled"
    expectation {
        result = true
    }
}

case "Sagemaker Notebook Instance with Root Access Disabled Nested" {
    path = "./cases/sagemaker-notebook-instance-with-root-access-disabled-nested"
    expectation {
        result = true
    }
}

case "Sagemaker Notebook Instance with Root Access Enabled" {
    path = "./cases/sagemaker-notebook-instance-with-root-access-enabled"
    expectation {
        result = false
    }
}

case "Sagemaker Notebook Instance with No Root Access Attribute" {
    path = "./cases/sagemaker-notebook-instance-with-no-root-access-attribute"
    expectation {
        result = false
    }
}
