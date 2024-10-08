mock "tfplan/v2" {
	module {
		source = "./mocks/policy-failure-mq-broker-with-no-auto-minor-version-upgrade-attribute/mock-tfplan-v2.sentinel"
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