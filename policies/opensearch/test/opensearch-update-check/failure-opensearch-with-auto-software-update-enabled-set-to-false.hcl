mock "tfplan/v2" {
	module {
		source = "./mocks/policy-failure-opensearch-with-auto-software-update-enabled-set-to-false/mock-tfplan-v2.sentinel"
	}
}



import "plugin" "tfresources" {
	source = "../../../../plugins/darwin/arm64/sentinel-plugin-tfresources"
}

mock "report" {
	module {
		source = "../../../../modules/mocks/report/report.sentinel"
	}
}

test {
	rules = {
		main = false
	}
}