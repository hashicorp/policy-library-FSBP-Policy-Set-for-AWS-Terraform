name = "s3-require-ssl"

disabled = false

case "s3 bucket without a s3 bucket policy" {
    path = "cases/bucket-without-policy"
    expectation {
        result = false
    }
}

case "s3 bucket with s3 bucket policy but no ssl details" {
    path = "cases/bucket-with-policy-but-missing-ssl-details"
    expectation {
        result = false
    }
}

case "s3 bucket with s3 bucket policy along with SSL details" {
    path = "cases/bucket-with-valid-ssl-policy"
    expectation {
        result = true
    }
}

case "s3 bucket with s3 bucket policy along with SSL details in nested module" {
    path = "cases/bucket-with-valid-ssl-policy-nested-module"
    expectation {
        result = true
    }
}

case "s3 bucket with inline s3 bucket policy" {
    path = "cases/bucket-with-valid-ssl-policy-nested-module-inline-policy"
    expectation {
        result = false
    }
}