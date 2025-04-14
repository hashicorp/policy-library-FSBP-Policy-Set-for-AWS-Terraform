mock "tfplan/v2" {
	module {
		source = "./mocks/policy-failure-opensearch-domain-with-anonymous-auth-enabled-attribute-not-present/mock-tfplan-v2.sentinel"
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