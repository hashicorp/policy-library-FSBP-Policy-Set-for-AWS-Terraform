mock "tfplan/v2" {
	module {
		source = "./mocks/policy-failure-sagemaker-endpoint-config-prod-with-multiple-production-variants/mock-tfplan-v2.sentinel"
	}
}



import "plugin" "tfresources" {
	source = "../../../plugins/darwin/arm64/sentinel-plugin-tfresources"
}

mock "report" {
	module {
		source = "../../../modules/mocks/report/report.sentinel"
	}
}

test {
	rules = {
		main = false
	}
}