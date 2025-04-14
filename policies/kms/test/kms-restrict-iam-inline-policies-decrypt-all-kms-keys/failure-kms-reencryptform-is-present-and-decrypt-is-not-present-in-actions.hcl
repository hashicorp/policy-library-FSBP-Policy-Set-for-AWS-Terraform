mock "tfstate/v2" {
	module {
		source = "./mocks/policy-failure-kms-reencryptform-is-present-and-decrypt-is-not-present-in-actions/mock-tfstate-v2.sentinel"
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