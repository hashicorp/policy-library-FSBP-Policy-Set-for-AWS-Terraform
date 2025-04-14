mock "tfplan/v2" {
	module {
		source = "./mocks/policy-success-mq-broker-with-auto-minor-version-upgrade-set-to-true/mock-tfplan-v2.sentinel"
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