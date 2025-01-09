name = "guardduty-lambda-protection-should-be-enabled"
	
disabled = false

case "lambda-protection-enabled" {
	path = "./cases/lambda-protection-enabled"
	expectation {
		result = true
	}
}

case "lambda-protection-disabled" {
	path = "./cases/lambda-protection-disabled"
	expectation {
		result = false
	}
}

case "lambda-protection-not-present" {
	path = "./cases/lambda-protection-not-present"
	expectation {
		result = false
	}
}