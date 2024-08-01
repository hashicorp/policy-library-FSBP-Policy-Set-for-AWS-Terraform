name = "sagemaker-notebook-ensure-subnet-id-for-instance"

disabled = false

case "Sagemaker Notebook Instance Launched Inside Default Subnet" {
    path = "./cases/sagemaker-notebook-instance-launched-inside-default-subnet"
    expectation {
        result = false
    }
}

case "Sagemaker Notebook Instance Launched Inside Default VPC" {
    path = "./cases/sagemaker-notebook-instance-launched-inside-default-vpc"
    expectation {
        result = false
    }
}

case "Sagemaker Notebook Instance with no Subnet Id" {
    path = "./cases/sagemaker-notebook-instance-with-no-subnet-id"
    expectation {
        result = false
    }
}

case "Sagemaker Notebook Instance with no Subnet Id Attribute" {
    path = "./cases/sagemaker-notebook-instance-with-no-subnet-id-attribute"
    expectation {
        result = false
    }
}

case "Sagemaker Notebook Instance with Subnet Id" {
    path = "./cases/sagemaker-notebook-instance-with-subnet-id"
    expectation {
        result = true
    }
}

case "Sagemaker Notebook Instance with  Subnet Id Nested" {
    path = "./cases/sagemaker-notebook-instance-with-subnet-id-nested"
    expectation {
        result = true
    }
}
