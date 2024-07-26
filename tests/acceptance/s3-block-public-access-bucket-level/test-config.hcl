name = "s3-block-public-access-bucket-level"

disabled = false

case "Non compliant s3 bucket present in root module" {
    path = "./cases/bucket-without-public-access-block-setting"
    expectation {
        result = false
    }
}

case "Non compliant s3 bucket present in nested module" {
    path = "./cases/bucket-without-public-access-block-setting-nested-module"
    expectation {
        result = false
    }
}

case "Compliant s3 bucket present in root module" {
    path = "./cases/bucket-with-public-access-block-setting"
    expectation {
        result = true
    }
}

case "Compliant s3 bucket present in nested module" {
    path = "./cases/bucket-with-public-access-block-setting-nested-module"
    expectation {
        result = true
    }
}

case "Non compliant s3 bucket with invalid public access block settings" {
    path = "./cases/bucket-with-invalid-public-access-block-setting-nested-module"
    expectation {
        result = false
    }
}

case "S3 bucket and public access block setting in different modules" {
    path = "./cases/bucket-with-public-access-block-setting-in-another-module"
    expectation {
        result = false
    }
}

case "Non compliant s3 bucket with public access block settings undefined" {
    path = "./cases/bucket-public-access-block-settings-undefined"
    expectation {
        result = false
    }
}