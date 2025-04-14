mock "tfplan/v2" {
	module {
		source = "./mocks/policy-failure-ec2-vpn-connection-with-logging-attribute-present-for-one-tunnel/mock-tfplan-v2.sentinel"
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