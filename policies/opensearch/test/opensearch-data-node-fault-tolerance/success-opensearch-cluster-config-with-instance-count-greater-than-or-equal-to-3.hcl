mock "tfplan/v2" {
	module {
		source = "./mocks/policy-success-opensearch-cluster-config-with-instance-count-greater-than-or-equal-to-3/mock-tfplan-v2.sentinel"
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
		main = true
	}
}