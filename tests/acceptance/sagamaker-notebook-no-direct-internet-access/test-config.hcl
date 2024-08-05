name = "sagemaker-notebook-no-direct-internet-access"

disabled = false

case "Sagemaker Notebook Instance with Direct Internet Access Disabled" {
    path = "./cases/sagemaker-notebook-instance-with-direct-internet-access-disabled"
    expectation {
        result = true
    }
}

case "Sagemaker Notebook Instance with Direct Internet Access Disabled Nested" {
    path = "./cases/sagemaker-notebook-instance-with-direct-internet-access-disabled-nested"
    expectation {
        result = true
    }
}

case "Sagemaker Notebook Instance with Direct Internet Access Enabled" {
    path = "./cases/sagemaker-notebook-instance-with-direct-internet-access-enabled"
    expectation {
        result = false
    }
}

case "Sagemaker Notebook Instance with No Direct Internet Access Attribute" {
    path = "./cases/sagemaker-notebook-instance-with-no-direct-internet-access-attribute"
    expectation {
        result = false
    }
}
