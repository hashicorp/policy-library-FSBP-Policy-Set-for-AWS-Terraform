mock "tfplan/v2" {
	module {
		source = "./mocks/policy-success-lb-with-https-listener-and-predefined-policy/mock-tfplan-v2.sentinel"
	}
}

mock "tfconfig/v2" {
	module {
		source = "./mocks/policy-success-lb-with-https-listener-and-predefined-policy/mock-tfconfig-v2.sentinel"
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