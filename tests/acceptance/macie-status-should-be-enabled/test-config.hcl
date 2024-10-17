name = "macie-status-should-be-enabled"

disabled = false

case "AWS Macie Account with No Status Attribute" {
    path = "./cases/aws-macie-account-with-no-status-attribute"
    expectation {
        result = false
    }
}

case "AWS Macie Account with Status set to Enabled" {
    path = "./cases/aws-macie-account-with-status-set-to-enabled"
    expectation {
        result = false
    }
}

case "AWS Macie Account with Status set to Enabled Nested" {
    path = "./cases/aws-macie-account-with-status-set-to-enabled-nested"
    expectation {
        result = false
    }
}

case "AWS Macie Account with Status set to Paused" {
    path = "./cases/aws-macie-account-with-status-set-to-paused"
    expectation {
        result = false
    }
}
