mock "tfplan/v2" {
	module {
		source = "./mocks/policy-failure-kinesis-stream-kms-key-id-is-present-encrypted-type-is-none/mock-tfplan-v2.sentinel"
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