mock "tfplan/v2" {
	module {
		source = "./mocks/policy-success-origin-protocol-policy-allows-match-viewer-while-viewer-protocol-policy-is-not-allow-all/mock-tfplan-v2.sentinel"
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