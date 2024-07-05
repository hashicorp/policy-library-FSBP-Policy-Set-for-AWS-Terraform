name = "emr-block-public-access-enabled"

disabled = true

case "Emr block public access disabled" {
    path = "./cases/block-public-access-disabled"
    expectation {
        result = false
    }
}

case "Emr block public access sg rule range invalid" {
    path = "./cases/block-public-access-sg-rule-range-invalid"
    expectation {
        result = false
    }
}

case "Emr block public access enabled" {
    path = "./cases/block-public-access-enabled"
    expectation {
        result = true
    }
}

case "Emr block public access enabled nested module" {
    path = "./cases/block-public-access-enabled-nested-module"
    expectation {
        result = true
    }
}