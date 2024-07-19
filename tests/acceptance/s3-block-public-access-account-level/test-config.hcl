name = "s3-block-public-access-account-level"
disabled = false

case "Compliant resource in root module" {
    path = "cases/success"
    expectation {
        result = true
        want_messages = [
            "This result means that all resources have passed the policy check for the policy s3-block-public-access-account-level"
        ]
    }
}

case "Non compliant resource in root module" {
    path = "cases/failure"
    expectation {
        result = false
        want_messages = [
            "Account level Amazon S3 block public access settings are not compliant",
            "aws_s3_account_public_access_block.setting"
        ]
    }
}

case "Compliant resource in nested module" {
    path = "cases/success-nested-module"
    expectation {
        result = true
        want_messages = [
            "This result means that all resources have passed the policy check for the policy s3-block-public-access-account-level"
        ]
    }
}

case "Non compliant resource in nested module" {
    path = "cases/failure-nested-module"
    expectation {
        result = false
        want_messages = [
            "Account level Amazon S3 block public access settings are not compliant",
            "module.s3.aws_s3_account_public_access_block.setting"
        ]
    }
}