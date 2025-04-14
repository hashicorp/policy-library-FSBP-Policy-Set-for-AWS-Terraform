mock "tfstate/v2" {
	module {
		source = "./mocks/policy-success-iam-policy-no-statement-with-full-access/mock-tfstate-v2.sentinel"
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