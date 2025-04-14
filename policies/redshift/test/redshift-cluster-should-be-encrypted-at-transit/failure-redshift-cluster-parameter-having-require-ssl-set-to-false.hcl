mock "tfplan/v2" {
	module {
		source = "./mocks/policy-failure-redshift-cluster-parameter-having-require-ssl-set-to-false/mock-tfplan-v2.sentinel"
	}
}


mock "tfconfig/v2" {
	module {
		source = "./mocks/policy-failure-redshift-cluster-parameter-having-require-ssl-set-to-false/mock-tfconfig-v2.sentinel"
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