name = "sagemaker-endpoint-config-prod-instance-count-check"

disabled = false

case "Sagemaker Endpoint Config Prod Initial Instance Count Greater than One" {
    path = "./cases/sagemaker-endpoint-config-prod-initial-instance-count-greater-than-one"
    expectation {
        result = true
    }
}

case "Sagemaker Endpoint Config Prod Initial Instance Count Greater than One Nested" {
    path = "./cases/sagemaker-endpoint-config-prod-initial-instance-count-greater-than-one-nested"
    expectation {
        result = true
    }
}

case "Sagemaker Endpoint Config Prod Initial Instance Count Set to One" {
    path = "./cases/sagemaker-endpoint-config-prod-initial-instance-count-set-to-one"
    expectation {
        result = false
    }
}

case "Sagemaker Endpoint Config Prod with Multiple Production Variants" {
    path = "./cases/sagemaker-endpoint-config-prod-with-multiple-production-variants"
    expectation {
        result = false
    }
}
