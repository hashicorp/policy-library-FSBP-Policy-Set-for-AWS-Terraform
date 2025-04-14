mock "tfplan/v2" {
	module {
		source = "./mocks/policy-success-dms-replication-instance-with-auto-minor-version-upgrade-true/mock-tfplan-v2.sentinel"
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